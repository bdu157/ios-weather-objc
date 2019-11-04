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

@property (strong, nonatomic) NSMutableArray<IIIWeather *> *weathers;

-(void)fetchWeather: (WeatherFetcherCompletionHandler)completionHandler;

@end

