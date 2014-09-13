//
//  Versiculo+Parse.m
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 13/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import "Versiculo+Parse.h"

@implementation Versiculo (Parse)

- (id)initWithDictionary:(NSDictionary *) dic
{
    self = [super init];
    
    if (self) {
        
        //  NSLog(@"%@", [dic description]);
        
        // NSLog(@"> %@",@"Algo deveria acontecer..") ;
        
        
        
        
        //for (NSDictionary *versiculos in dic) {
        
        
        self.texto = [dic objectForKey:@"texto"];
        self.numero = [dic objectForKey:@"versiculo"];
        
        
        
        
        
        
        // NSLog(@"> %@, %@",self.texto, self.numero) ;
    }
    
    
    
    return self;
}

@end
