//
//  MainViewController.m
//  SecondApp
//
//  Created by JackyChen's iMac on 11/12/2015.
//  Copyright © 2015 Jackey's iMac. All rights reserved.
//

#import "MainViewController.h"
#import "../Views/HomeView.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *xibViews = [[NSBundle mainBundle] loadNibNamed:@"Home" owner:self options:nil];
    HomeView *homeView = [xibViews objectAtIndex:0];
    
    homeView.bounds = [[UIScreen mainScreen] bounds];
    
    NSLog(@"%f %f", homeView.bounds.size.width, homeView.bounds.size.height);
    
    NSLog(@"%f %f", [[UIScreen mainScreen] bounds ].size.width, [[UIScreen mainScreen] bounds ].size.height);
    
    homeView.homeLbl.text = @"JJJ";
    
    [self.view addSubview:homeView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
