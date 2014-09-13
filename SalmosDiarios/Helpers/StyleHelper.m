//
//  StyleHelper.m
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 13/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import "StyleHelper.h"

@implementation StyleHelper


+ (NSDictionary *) estiloTop {
    
    NSShadow *shadow = [NSShadow new];
    [shadow setShadowColor: [UIColor grayColor]];
    [shadow setShadowOffset: CGSizeMake(0.0f, 0.0f)];
    
    NSDictionary *textTitleOptions = [NSDictionary dictionaryWithObjectsAndKeys:
                                      [UIColor whiteColor], NSForegroundColorAttributeName,
                                      shadow, NSShadowAttributeName,
                                       nil];
    
    return textTitleOptions;
}

@end
