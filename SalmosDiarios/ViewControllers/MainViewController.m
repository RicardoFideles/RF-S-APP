//
//  MainViewController.m
//  SalmosDiarios
//
//  Created by Ricardo jorge Fideles junior on 12/09/14.
//  Copyright (c) 2014 br.com.rf.salmosdiarios. All rights reserved.
//

#import "MainViewController.h"
#import "SWRevealViewController.h"


@interface MainViewController ()

@property (copy, nonatomic) Salmo *salmo;
@property (copy, nonatomic) Versiculo *versiculo;
@property (weak, nonatomic) IBOutlet UILabel *labelSalmo;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [BannerHelper showWithViewController:self];
    
    self.salmos = [ReadSalmosJsonHelper readSalmos];
    
    [self configureLabelSalmo];
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];


}

- (void)configureNavBar {
    
    
    self.navigationController.navigationBar.titleTextAttributes =   [StyleHelper estiloTop];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    self.navigationController.navigationBar.barTintColor = K_COLOR_HEADER;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    self.title = [@"Salmos Diários" uppercaseString];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
}

- (Salmo *)pickRandomSalmo {
    
    Salmo *randomSalmo = nil;
    if (self.salmos.count) {
        unsigned index = arc4random() % self.salmos.count;
        randomSalmo = self.salmos[index];
    }
    return randomSalmo;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self configureBackground];
    [self configureNavBar];
    self.title = @"SALMOS DIÁRIOS";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) configureBackground {
    
    self.view.backgroundColor = K_COLOR_VIEW_HOME;
    
}

- (Salmo *) salmo
{
    _salmo = [self pickRandomSalmo];
    return _salmo;
}

- (Versiculo *) versiculo
{
    _versiculo = self.salmo.pickRandomVersiculo;
    return _versiculo;
}

- (IBAction)share:(id)sender {
    
    NSString *text = [NSString stringWithFormat:@"%@", self.versiculo.texto];
    
    NSString *subject = [NSString stringWithFormat:NSLocalizedString(@"Salmos da Bíblia Sagrada", nil), self.versiculo.texto];
    
    
    NSArray *activityItems = @[text];
    
    UIActivityViewController *activityController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
    
    [activityController setValue:subject forKey:@"subject"];
    
    [self presentViewController:activityController animated:YES completion:nil];
    
    
}


- (void) configureLabelSalmo {
    
    _labelSalmo.attributedText = [[NSAttributedString alloc]
                                  initWithString:self.versiculo.texto];
    
}

@end
