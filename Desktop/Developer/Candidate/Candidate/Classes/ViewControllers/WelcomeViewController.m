//
//  WelcomeViewController.m
//  Candidate
//
//  Created by Coeus on 01/04/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "WelcomeViewController.h"
#import "InfoFormViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    InfoFormViewController * vc = segue.destinationViewController;
    
    [vc setManagedObjectContext:_managedObjectContext];
}

- (IBAction)registerButtonPressed:(id)sender {

    [self performSegueWithIdentifier:@"ontoInfoForm" sender:nil];

}

- (IBAction)luckyDrawButtonPressed:(id)sender {
    [self performSegueWithIdentifier:@"ontoLuckyDraw" sender:nil];
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
