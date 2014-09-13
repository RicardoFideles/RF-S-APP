//
//  MainViewController.h
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 12/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BannerHelper.h"
#import "HexColor.h"
#import "Salmo+Parse.h"
#import "ReadSalmosJsonHelper.h"
#import "StyleHelper.h"



@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (nonatomic, strong) NSArray *salmos;


- (Salmo *)pickRandomSalmo;

@end
