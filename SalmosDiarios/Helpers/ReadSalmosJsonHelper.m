//
//  ReadSalmosJsonHelper.m
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 13/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import "ReadSalmosJsonHelper.h"

@implementation ReadSalmosJsonHelper

NSString *const FILENAME = @"salmos";

NSString *const EXTENSION_OF_FILENAME = @"json";


+ (NSArray *)readSalmos {
    
    NSMutableArray *salmos = [[NSMutableArray alloc]init];
    
    NSString* path = [[NSBundle mainBundle] pathForResource:FILENAME
                                                     ofType:EXTENSION_OF_FILENAME];
    
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    
    
    for (NSDictionary *salmo in [content objectFromJSONString]) {
        
        [salmos addObject:[[Salmo alloc] initWithDictionary:[salmo objectForKey:@"Salmo"]]];
        
    }
    
    return salmos;
}


@end
