import { BrowserModule } from '@angular/platform-browser';
import { NgModule, ApplicationRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms'; 
import { AppComponent } from './app.component';
import { HttpModule } from '@angular/http';
import { AlertModule } from 'ngx-bootstrap'; 
import { MapsAPILoader,AgmCoreModule,AgmMap,MarkerManager,AgmMarker} from '@agm/core'; 
import {GoogleMapsAPIWrapper} from '@agm/core/services/google-maps-api-wrapper';
import { MdTabsModule } from '@angular/material';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { LocationService } from './location.service';  
import { GoogleService } from './google.service';  

@NgModule({
  imports: [ 
    HttpModule,
    AlertModule.forRoot(),
    BrowserModule,
    CommonModule,
    FormsModule,
    
    AgmCoreModule.forRoot({
      apiKey: 'AIzaSyABqx2JhlCkPrpOivb_9CIDk0YfFCfRTJs',
       libraries: ["places"]
    })
  ],
  providers: [LocationService,GoogleService,AgmMap,GoogleMapsAPIWrapper,MarkerManager,AgmMarker],
  declarations: [ AppComponent ],
  bootstrap: [ AppComponent ]
})
export class AppModule {}