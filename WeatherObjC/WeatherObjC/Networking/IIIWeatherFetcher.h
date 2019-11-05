//
//  IIIWeatherFetcher.h
//  WeatherObjC
//
//  Created by Dongwoo Pae on 11/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IIIWeather.h"

typedef void (^WeatherFetcherCompletionHandler)(NSArray *weathers, NSError *error);

@interface IIIWeatherFetcher : NSObject


-(void)fetchWeatherWithZipCode:(NSString *)zipCode compleion:(WeatherFetcherCompletionHandler)completionHandler;

@end

