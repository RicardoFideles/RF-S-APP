//
//  menuCellTableViewCell.h
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 13/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface menuCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIView *menuIndicador;
@property (weak, nonatomic) IBOutlet UIImageView *topLineDivider;

@end
