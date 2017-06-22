import { Injectable } from '@angular/core';
import { Http, Response, Headers, RequestOptions } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/share';
import 'rxjs/add/operator/catch';
@Injectable()
export class LocationService {

public dataResult;
//read file. dat in azure storage file services
private url: string = "https://datachallenge.file.core.windows.net/data/addresses.dat?sv=2016-05-31&ss=bfqt&srt=sco&sp=rwdlacup&se=2019-03-09T18:24:26Z&st=2017-06-21T10:24:26Z&spr=https,http&sig=z0iKV5OW79bOSulAm%2BByBpHQZawCqsqwyNAzHpTMixY%3D"
constructor(private http: Http) {
    console.log('service is ready')

}

//Get Method data from file in azure
fetchData(): Observable<string> {
    this.dataResult = this.http.get(this.url).share();
    return this.dataResult.map((data) => data._body);

}




}
