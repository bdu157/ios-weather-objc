//
//  IIIWeather.m
//  WeatherObjC
//
//  Created by Dongwoo Pae on 11/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "IIIWeather.h"

@implementation IIIWeather

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end


/*
api last 7 days from zip code
api key at the end
cnt: 7  -> 7 days
city's name
temp
UIImage -> icon

parse it out after serializing

object -> initwithCity

nsmutalbearray *for  (loop through it(?))
return the instance of it -> return of it (convenience)
 f144c855a01a9bd80c692dd246ed42e9
 
 dataTaskWith
 
dictionary [@main][@temp]
uiimage imagednamed: dictionary[@weather][0][@icon]];
 
dictionary[@"main"]
dictionary[@"main"][@"temp"]
*/
