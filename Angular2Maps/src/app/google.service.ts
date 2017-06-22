import { Injectable } from '@angular/core';
import { Observable, Observer } from 'rxjs';
declare var google: any;

@Injectable()
export class GoogleService {

  constructor() { }
  markRoute(directionsDisplay, directionsService, locations, positionInit, markersAgm, markersSRoute, destination): Observable<Array<string>> {

    var locationsMap = new Observable(observer => {
      var origin = [positionInit.latitude, positionInit.longitude].toString();
      var destination = [markersSRoute[markersSRoute.length - 1].latitude, markersSRoute[markersSRoute.length - 1].longitude].toString();

      var waypts = [];
      var checkboxArray = locations;
      for (var i = 0; i < checkboxArray.length - 1; i++) {

        waypts.push({
          location: checkboxArray[i],
          stopover: true
        });

      }
      console.log(waypts)
      directionsService.route({
        origin: origin,
        destination: destination,
        waypoints: waypts,
        optimizeWaypoints: true,
        travelMode: 'DRIVING'
      }, function (response, status) {
        if (status === 'OK') {
          directionsDisplay.setDirections(response);

        } else {
          window.alert('Directions request failed due to ' + status);
        }
        observer.next(response.routes[0]);
        observer.complete();

      });

    })

    return locationsMap;
  }

  mapTime(obj): Observable<Array<any>> {

    var locationsMap = new Observable(observer => {
      observer.next(obj);
      observer.complete();
    })
    return locationsMap;
  }
}
