//
//  SalmosTableViewController.h
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 12/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReadSalmosJsonHelper.h"

@interface SalmosTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *salmos;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@end
