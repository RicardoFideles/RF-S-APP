//
//  SalmosTableViewController.m
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 12/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import "SalmosTableViewController.h"
#import "SWRevealViewController.h"
#import "VersiculosTableViewController.h"
#import "GADBannerView.h"



@interface SalmosTableViewController ()

@end

@implementation SalmosTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.salmos = [ReadSalmosJsonHelper readSalmos];
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
   
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [self.salmos count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"salmo";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSString *label = [@"Salmo " stringByAppendingString:[self.salmos[indexPath.row] capitulo]];
    
    cell.textLabel.text = label;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"versiculos"]) {
        if ([segue.destinationViewController isKindOfClass:[VersiculosTableViewController class]]) {
            VersiculosTableViewController *vtc = (VersiculosTableViewController *)segue.destinationViewController;
            
            
            NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
            
            Salmo *salmo = [self.salmos objectAtIndex:indexPath.row];
            
            vtc.versiculos = [salmo versiculos];
            vtc.salmo = [@"Salmo " stringByAppendingString:[salmo capitulo]];
            
            vtc.title = [@"Versículos" uppercaseString];
            
            
        }
    }
}


- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    
    GADBannerView *bannerView_ = [BannerHelper showBannerForTableViewController:self];
    return bannerView_;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    return 50;
}


@end
