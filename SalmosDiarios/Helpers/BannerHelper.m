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

+ (void) showBannerForViewController:(UIViewController *)viewController
{
    GADBannerView *bannerView_;
    
    bannerView_  = [[GADBannerView alloc]
                        initWithFrame:CGRectMake(
                                        0.0,
                                        viewController.view.frame.size.height - GAD_SIZE_320x50.height,
                                        GAD_SIZE_320x50.width,
                                        GAD_SIZE_320x50.height)];
    
    bannerView_.adUnitID = AD_MOBI_ID;
    
    bannerView_.rootViewController = viewController;
    [viewController.view addSubview:bannerView_];
    
    GADRequest *request = [GADRequest request];
    request.testDevices = [NSArray arrayWithObjects:GAD_SIMULATOR_ID, nil];
    
    [bannerView_ loadRequest:request];
    
}

+ (GADBannerView *) showBannerForTableViewController:(UIViewController *)viewController;
{
    
    GADBannerView *bannerView_;
    
    NSLog(@"tamanho da tela : %f" ,viewController.view.frame.size.height );
        
    bannerView_  = [[GADBannerView alloc]
                    initWithFrame:CGRectMake(
                                             0.0,
                                             viewController.view.frame.size.height - GAD_SIZE_320x50.height,
                                             GAD_SIZE_320x50.width,
                                             GAD_SIZE_320x50.height)];
    
    
    //ID - ADMOBI
    bannerView_.adUnitID = AD_MOBI_ID;
    
    bannerView_.rootViewController = viewController;
    [viewController.view addSubview:bannerView_];
    
    GADRequest *request = [GADRequest request];
    request.testDevices = [NSArray arrayWithObjects:GAD_SIMULATOR_ID, nil];
    
    [bannerView_ loadRequest:request];
    
    return bannerView_;
    
}

@end
