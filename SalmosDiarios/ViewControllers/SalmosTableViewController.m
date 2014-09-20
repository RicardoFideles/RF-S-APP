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

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.salmos = [ReadSalmosJsonHelper readSalmos];

    
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
   
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
    // Create a view of the standard size at the top of the screen.
    // Available AdSize constants are explained in GADAdSize.h.
    
    GADBannerView *bannerView_ ;
    
    
    bannerView_  = [[GADBannerView alloc]
                    initWithFrame:CGRectMake(
                                             0.0,
                                             self.view.frame.size.height - GAD_SIZE_320x50.height,
                                             GAD_SIZE_320x50.width,
                                             GAD_SIZE_320x50.height)];
    

    // Specify the ad's "unit identifier." This is your AdMob Publisher ID.
//    bannerView_.adUnitID = @"a15120dbc353a5f";
    bannerView_.adUnitID = @"ca-app-pub-3454917145399398/9876834358";

    
    // Let the runtime know which UIViewController to restore after taking
    // the user wherever the ad goes and add it to the view hierarchy.
    bannerView_.rootViewController = self;
    
    
    GADRequest *request = [GADRequest request];
    request.testDevices = [NSArray arrayWithObjects:GAD_SIMULATOR_ID, nil];
    
    // Initiate a generic request to load it with an ad.    
    [bannerView_ loadRequest:request];

    
    
    
    return bannerView_;
}

-(float)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    // admob ad size height
    return 50.0;
}


@end
