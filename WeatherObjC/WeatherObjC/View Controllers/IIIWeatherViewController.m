//
//  IIIWeatherViewController.m
//  WeatherObjC
//
//  Created by Ilgar Ilyasov on 3/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "IIIWeatherViewController.h"
#import "IIIWeatherFetcher.h"
#import "IIIWeatherCollectionViewCell.h"
#import "IIIWeather.h"

@interface IIIWeatherViewController ()  //private

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UILabel *cityNameLabel;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property IIIWeatherFetcher * iiiweatherFetcher;

@property NSMutableArray<IIIWeather *> *weathers;

@end

@implementation IIIWeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.searchBar.delegate = self;
    
    _iiiweatherFetcher = [[IIIWeatherFetcher alloc] init];
}



#pragma mark - searchBar method
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    NSString *zipCode = [self.searchBar text];
    
    [_iiiweatherFetcher fetchWeatherWithZipCode:zipCode compleion:^(NSError *error) {
        if (error) {
            NSLog(@"Error fetching weather: %@", error);
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.collectionView reloadData]; //this should be called here after fetching datas
        });
    }];
}


#pragma mark - collectionView DataSource  //none of these methods below are getting called....

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _iiiweatherFetcher.weathers.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    IIIWeatherCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"WeatherCell" forIndexPath:indexPath];
    
    IIIWeather *weather = [_iiiweatherFetcher.weathers objectAtIndex:indexPath.row];
    
    cell.weather = weather;
    
    return cell;
}


@end



