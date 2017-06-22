import { Component, ViewChild, AfterViewInit } from '@angular/core';
import { LocationService } from './location.service';
import { MapsAPILoader, AgmMap, MarkerManager, AgmMarker } from '@agm/core';
import { GoogleMapsAPIWrapper } from '@agm/core/services/google-maps-api-wrapper';
import { Observable, Observer, Subscription } from 'rxjs';
import { GoogleService } from './google.service';
//Golbal var for google methods
declare var google: any;


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [LocationService, GoogleService]
})


export class AppComponent implements AfterViewInit {

  //initialize basic variables
  @ViewChild('map') agmMap;
  private map: any;
  private zoom: number;
  private title: string = 'The Challenge';
  private latitude: number;
  private longitude: number;
  private locationsMap: Observable<AgmMarker>;
  private idDelay: Observable<any>;
  private locations: string[] = [];
  private viewMagic: boolean = false; 
  private anyErrors: boolean = false;
  private loadedInfo: boolean = false;
  private positionInit: AgmMarker = null;
  private positionEnd: AgmMarker = null;
  private geocoder: any = null;
  private directionsDisplay: any = null;
  private directionsService: any = null;
  private stepDisplay: any = null;;
  private markersAgm: AgmMarker[] = [];
  private markersSRoute: AgmMarker[] = [];
  private magic: string;
  private message: string;
  //userMarker
  private steps: any;
  private timer;
  private sub: Subscription;


  //path markers icons in azure storage file services
  icons = {
    user: {
      icon: 'https://datachallenge.file.core.windows.net/data/unicorn.png?sv=2016-05-31&ss=bfqt&srt=sco&sp=rwdlacup&se=2019-03-09T18:24:26Z&st=2017-06-21T10:24:26Z&spr=https,http&sig=z0iKV5OW79bOSulAm%2BByBpHQZawCqsqwyNAzHpTMixY%3D'
    },
    info: {
      icon: 'https://datachallenge.file.core.windows.net/data/marker.png?sv=2016-05-31&ss=bfqt&srt=sco&sp=rwdlacup&se=2019-03-09T18:24:26Z&st=2017-06-21T10:24:26Z&spr=https,http&sig=z0iKV5OW79bOSulAm%2BByBpHQZawCqsqwyNAzHpTMixY%3D'
    }
  };
  constructor(private dataService: LocationService, private mapsAPILoader: MapsAPILoader,
    private markerManager: MarkerManager, public agmMarker: AgmMarker, private googleService: GoogleService) {
    // Set variables for initial map information
    this.title = 'The Challenge';
    this.latitude = 0;
    this.longitude = 0;
    this.zoom = 1;
    this.magic = "Reload";
    this.message="Welcome, Press a bookmark to start";
  }
  //this method load after that view has been initialized
  ngAfterViewInit() {
    //Set id Map for set changes (markers)
    this.agmMap.mapReady.subscribe(map => {
      this.directionsDisplay = new google.maps.DirectionsRenderer();
      this.directionsDisplay.setMap(map);
      this.map = map;
      // Component Method. 
       this.timer = Observable.timer(2500, 1000);
    this.sub = this.timer.subscribe(t => this.loadInfo());
 
    });

  }

  // Load information in map
  loadInfo() {
    this.sub.unsubscribe();
    //After google javasctript is loaded
    this.mapsAPILoader.load().then(() => {
      console.log('google script loaded');

      this.geocoder = new google.maps.Geocoder();
      this.directionsService = new google.maps.DirectionsService();
      this.stepDisplay = new google.maps.InfoWindow;
      // subscription for recieve data from service
      this.dataService.fetchData().subscribe((result) => {
        this.locations = [];
        if (result != "") {
          this.loadedInfo = true;
          this.locations = result.split('\n');
          //Runs the address array
          this.locations.forEach(element => {
            if (element) {
              //Method recieve address and return geographic coordinates to observable
              this.locationsMap = new Observable(observer => {
                //Inside this function this word 'this' is indefinite, for this an observable is created
                this.geocoder.geocode({ 'address': element }, function (results, status) {
                  if (status == google.maps.GeocoderStatus.OK) {
                    var lat = results[0].geometry.location.lat();
                    var lng = results[0].geometry.location.lng();
                    let mark: AgmMarker = new AgmMarker(this.markerManager);
                    mark.visible = true;
                    mark.latitude = lat
                    mark.longitude = lng;
                    mark.draggable = true;
                    observer.next(mark);
                    observer.complete();
                  } else {
                    console.log('Error - ', results, ' & Status - ', status);
                    observer.next({});
                    observer.complete();
                  }
                })
              })
              this.createMarkers();
            }

          })
        }
        //In case of error, I show alert
      }, (error) => { this.anyErrors = true; this.loadedInfo = false; })
    })
  }


  // this subscription recieve geographic coordinates
  createMarkers() {
    let subscription = this.locationsMap.subscribe((value) => {
      let latM: number = value.latitude;
      let lngM: number = value.longitude;

      if (this.latitude == 0) {
        this.latitude = latM;
        this.longitude = lngM;
        this.zoom = 13;
      }

      let mark: AgmMarker = new AgmMarker(this.markerManager);
      mark.visible = true;
      mark.latitude = latM
      mark.longitude = lngM;
      mark.draggable = true;
      mark.zIndex = 0.9;
      mark.iconUrl = this.icons['info'].icon;
      this.markersAgm.push(mark);
    })
  }


  // Event for marker click, Sets start and end points
  markerClick(mark) {
    if (mark.icon !== this.icons['user'].icon) {
      //Show the maci button
      this.viewMagic = true;
      this.magic = "Magic";
      //Set start marker 
      this.markersAgm.forEach(element => {
        if (element == mark) {
          element.iconUrl = "";
          element.label = "Start";
        }
        if (element == this.positionInit) {
          element.iconUrl = this.icons['info'].icon;
          element.label = "";
        }
      });
      this.positionInit = mark;

    }

  }


  // Event for magic click, Sets start and end points
  start() {
    
    if (this.magic === "Reload") {
      location.reload();
      return;
    }
    this.magic = "Reload";
    this.markersAgm.forEach(element => {
      if (element !== this.positionInit) {
        var p1 = new google.maps.LatLng(this.positionInit.latitude, this.positionInit.longitude);
        var p2 = new google.maps.LatLng(element.latitude, element.longitude);
        var d = (google.maps.geometry.spherical.computeDistanceBetween(p1, p2) / 1000).toFixed(2);
        element.opacity = parseInt(d);
        this.markersSRoute.push(element);
      }
      else
        this.markersSRoute.push(element);
    });

    this.markersSRoute.sort(function (a, b) {
      return a.opacity - b.opacity;
    });


    var origin = [this.positionInit.latitude, this.positionInit.longitude].toString();
    var destination = [this.markersSRoute[this.markersSRoute.length - 1].latitude, this.markersSRoute[this.markersSRoute.length - 1].longitude].toString();
    this.positionEnd = this.markersSRoute[this.markersSRoute.length - 1];
    //sets short route in the map
    this.googleService.markRoute(this.directionsDisplay, this.directionsService, this.locations, this.positionInit, this.markersAgm, this.markersSRoute, destination).subscribe((value) => {

      this.addMark(value);

    })
  }

  addMark(route) {
    var mark: AgmMarker = new AgmMarker(this.markerManager);
    this.markersAgm[0].label = "";
    mark.visible = true;
    mark.latitude = this.positionInit.latitude;
    mark.longitude = this.positionInit.longitude;
    mark.draggable = true;
    mark.label = '';
    mark.iconUrl = this.icons['user'].icon;
    mark.zIndex = 1;
    this.markersAgm.push(mark);
    this.message="Hemos comenzado la ruta";
    var marker = this.markersAgm[this.markersAgm.length - 1];

    this.steps = route.legs;
    var steps = this.steps;
    var line = this.directionsDisplay.directions.routes[0].overview_path;
    this.timer = Observable.timer(1, 500);
    this.sub = this.timer.subscribe(t => this.doMark(t, mark, line[t], line.length - 1));




  }




  doMark(t, mark, data, length) {
    if (t === length * 2) {
      this.sub.unsubscribe();
    }
    if (t <= length) {
      this.message="We are on the way ...";
      mark.latitude = data.lat();
      mark.longitude = data.lng();
      this.latitude = data.lat();
      this.longitude = data.lng();
      this.zoom = 14;
      console.log(t + ' latLng:(' + mark.latitude + ',' + mark.longitude + ')');
    }
    if(t==length)
     this.message="We have arrived! ";
     
  }


}

