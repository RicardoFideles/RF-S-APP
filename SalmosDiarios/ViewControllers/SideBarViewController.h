//
//  SideBarViewController.h
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 12/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Menu+Parse.h"
#import "menuCell.h"
#import "HexColor.h"


@interface SideBarViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, copy) NSArray *itensMenu;

@end