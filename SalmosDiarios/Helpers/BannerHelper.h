//
//  BannerHelper.h
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 12/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GADBannerView.h"

@interface BannerHelper : NSObject

+ (void) showBannerForViewController:(UIViewController *)viewController;

+ (GADBannerView *) showBannerForTableViewController:(UIViewController *)viewController;

@end
