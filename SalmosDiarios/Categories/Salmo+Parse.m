//
//  Salmo+Parse.m
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 13/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import "Salmo+Parse.h"
#import "Versiculo+Parse.h"


@implementation Salmo (Parse)

- (id)initWithDictionary:(NSDictionary *) dic
{
    self = [super init];
    
    if (self) {
        
        self.capitulo = [dic objectForKey:@"capitulo"];
        
        //A lista de versiculos nao está rolando.. :(
        
        self.versiculos = [[NSMutableArray alloc] init];
        
        
        NSArray *tempVers = [dic objectForKey:@"Versiculo"];
        
        
        for (NSDictionary *versiculo in tempVers) {
            
            // NSLog(@">>, %@", versiculo);
            
            [self.versiculos addObject:[[Versiculo alloc] initWithDictionary:versiculo]];
        }
        
        
    }
    
    return self;
}


@end
