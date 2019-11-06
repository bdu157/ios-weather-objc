//
//  IIIWeatherCollectionViewCell.m
//  WeatherObjC
//
//  Created by Ilgar Ilyasov on 3/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "IIIWeatherCollectionViewCell.h"
#import "IIIWeather.h"
#import <UIKit/UIKit.h>

@interface IIIWeatherCollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *weatherImageView;
@property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;


@end

@implementation IIIWeatherCollectionViewCell


#pragma mark - Private methods
-(void)updateViews
{
    if (self.weather) {
        self.temperatureLabel.text = [self.weather.temp stringValue];
        self.weatherImageView.image = self.weather.iconImage;
    } else {
        NSLog(@"%s", "there is no weather being passed from view controller");
    }
}

-(void)setWeather:(IIIWeather *)weather
{
    if (_weather != weather) {
        _weather = weather;
        [self updateViews];
    }
}

@end
