//
//  BannerHelper.m
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 12/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import "BannerHelper.h"
#import "GADBannerView.h"

@implementation BannerHelper

+ (void) showWithViewController:(UIViewController *)viewController
{
    GADBannerView *bannerView_;
    
    bannerView_  = [[GADBannerView alloc]
                        initWithFrame:CGRectMake(
                                        0.0,
                                        viewController.view.frame.size.height - GAD_SIZE_320x50.height,
                                        GAD_SIZE_320x50.width,
                                        GAD_SIZE_320x50.height)];
    
    //ID - ADMOBI
    bannerView_.adUnitID = @"ca-app-pub-3454917145399398/9876834358";
    
    bannerView_.rootViewController = viewController;
    [viewController.view addSubview:bannerView_];
    
    GADRequest *request = [GADRequest request];
    request.testDevices = [NSArray arrayWithObjects:GAD_SIMULATOR_ID, nil];
    
    [bannerView_ loadRequest:request];
    
}

+ (void) showWithTableViewController:(UITableViewController *)viewController
{
    
    GADBannerView *bannerView_;
        
    bannerView_  = [[GADBannerView alloc]
                    initWithFrame:CGRectMake(
                                             0.0,
                                             viewController.view.frame.size.height - GAD_SIZE_320x50.height,
                                             GAD_SIZE_320x50.width,
                                             GAD_SIZE_320x50.height)];
    
    
    //ID - ADMOBI
    bannerView_.adUnitID = @"ca-app-pub-3454917145399398/9876834358";
    
    bannerView_.rootViewController = viewController;
    [viewController.view addSubview:bannerView_];
    
    GADRequest *request = [GADRequest request];
    request.testDevices = [NSArray arrayWithObjects:GAD_SIMULATOR_ID, nil];
    
    [bannerView_ loadRequest:request];
    
}

@end
