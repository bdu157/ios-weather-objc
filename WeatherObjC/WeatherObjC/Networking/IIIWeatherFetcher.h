//
//  IIIWeatherFetcher.h
//  WeatherObjC
//
//  Created by Dongwoo Pae on 11/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IIIWeather.h"

typedef void (^WeatherFetcherCompletionHandler)(NSError *error); //you can also use (NSArray *weather) and pass this object within WeatherViewController

@interface IIIWeatherFetcher : NSObject

@property NSArray<IIIWeather *> *weathers;

-(void)fetchWeatherWithZipCode:(NSString *)zipCode compleion:(WeatherFetcherCompletionHandler)completionHandler;

@end

