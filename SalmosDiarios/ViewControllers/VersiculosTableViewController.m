//
//  VersiculosTableViewController.m
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 15/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import "VersiculosTableViewController.h"
#import "Versiculo.h"
#import "DisplaySalmoViewController.h"
#import "GADBannerView.h"



@interface VersiculosTableViewController ()

@end

@implementation VersiculosTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.versiculos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"versiculo";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Versiculo *versiculo = self.versiculos[indexPath.row];
    
    //NSLog(@"Salmo :%@", self.salmo);

    NSString *label = [self.salmo stringByAppendingString:@":"];

    NSString *temp = [[versiculo numero] stringByAppendingString:@" - "];
    
    label = [label stringByAppendingString:temp];
    
    label = [label stringByAppendingString:[versiculo texto]];
    
    cell.textLabel.text = label;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showsalmo"]) {
        if ([segue.destinationViewController isKindOfClass:[DisplaySalmoViewController class]]) {
            
            DisplaySalmoViewController *dpsvc = (DisplaySalmoViewController *)segue.destinationViewController;
            
            
            NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
            
            Versiculo *versiculo = [self.versiculos objectAtIndex:indexPath.row];
            
            dpsvc.versiculo = [versiculo texto];
            
            NSString *title = self.salmo;
            
            title =  [title stringByAppendingString:@" : "];
            
            title = [title stringByAppendingString:[versiculo numero]];
            
            dpsvc.title = [title uppercaseString];
            
            
            
        }
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
        
    GADBannerView *bannerView_ = [BannerHelper showBannerForTableViewController:self];
    
    return bannerView_;
}

-(float)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    return 50.0;
}


@end
