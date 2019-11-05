//
//  IIIWeatherViewController.m
//  WeatherObjC
//
//  Created by Ilgar Ilyasov on 3/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "IIIWeatherViewController.h"
#import "IIIWeatherFetcher.h"

@interface IIIWeatherViewController ()  //private

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UILabel *cityNameLabel;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property IIIWeatherFetcher * iiiweatherFetcher;

@property NSArray<IIIWeather *> *weathers;

@end

@implementation IIIWeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _weathers = @[];
    
    _iiiweatherFetcher = [[IIIWeatherFetcher alloc] init];
    [_iiiweatherFetcher fetchWeatherWithZipCode:@"94040" compleion:^(NSArray *weathers, NSError *error) {
        if (error) {
            NSLog(@"Error fetching weather: %@", error);
        }
        //dispatch
        self.weathers = weathers ?: @[];
    }];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}



@end



