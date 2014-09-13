//
//  Salmo.h
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 13/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Versiculo.h"


@interface Salmo : NSObject

@property (copy, nonatomic) NSString *capitulo;
@property (strong, nonatomic) NSMutableArray *versiculos;

- (Versiculo *)pickRandomVersiculo;

@end
