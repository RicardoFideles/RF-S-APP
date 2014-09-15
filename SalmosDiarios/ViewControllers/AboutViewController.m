//
//  AboutViewController.m
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 15/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import "AboutViewController.h"
#import "SWRevealViewController.h"


@interface AboutViewController ()

@end

@implementation AboutViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Sobre";
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end