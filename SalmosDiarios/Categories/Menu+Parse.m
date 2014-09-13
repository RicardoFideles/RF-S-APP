//
//  Menu+Parse.m
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 13/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import "Menu+Parse.h"

@implementation Menu (Parse)

- (id)initWithDictionary:(NSDictionary *)dic {
    self = [super init];
    
    if (self) {
        self.label = [dic objectForKey:@"label"];
        self.storyboardId = [dic objectForKey:@"storyboardId"];
    }
    
    return self;
}

+ (NSArray *)itens {
    
    NSMutableArray *itensDoMenu = [[NSMutableArray alloc] init];
    
    @try {
        NSDictionary *itens = [Menu readJson];
        
        for (NSDictionary *item in itens) {
            Menu *itemMenu = [[Menu alloc] initWithDictionary:item];
            [itensDoMenu addObject:itemMenu];
            
            NSLog(@"Item do menu: %@", itemMenu);
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Problema no parse de editorias: %@", [exception description]);
    }
    @finally {
        return itensDoMenu;
    }
}

NSString *const FILENAME_JSON = @"configuracoes";

NSString *const EXTENSION = @"json";


+ (NSDictionary *)readJson {
    
    NSString* path = [[NSBundle mainBundle] pathForResource:FILENAME_JSON
                                                     ofType:EXTENSION];
    
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    
    NSDictionary *itens = [[content objectFromJSONString] objectForKey:@"configuracoes"];
    
    return itens;
    
}


@end
