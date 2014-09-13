//
//  Menu+Parse.h
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 13/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import "Menu.h"
#import <JSONKit.h>


@interface Menu (Parse)

- (id)initWithDictionary:(NSDictionary *)dic;
+ (NSArray *)itens;

@end
