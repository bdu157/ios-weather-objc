//
//  IIIWeather.h
//  WeatherObjC
//
//  Created by Dongwoo Pae on 11/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IIIWeather : NSObject

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

//under main key/value - dictionary / key/value
@property (nonatomic, readonly) NSNumber *temp;
//under weather array [0]
@property (nonatomic, readonly, copy) NSString *icon;

//under city key/value - dictionary
@property (nonatomic, readonly, copy) NSString *name;
@end


