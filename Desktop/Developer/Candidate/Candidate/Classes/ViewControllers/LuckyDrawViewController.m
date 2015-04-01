//
//  LuckyDrawViewController.m
//  Candidate
//
//  Created by Coeus on 01/04/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "LuckyDrawViewController.h"

@interface LuckyDrawViewController ()

@end

@implementation LuckyDrawViewController
- (IBAction)gotoWelcomeScreen:(id)sender {
    NSArray * myControllers = [self.navigationController viewControllers];
    UIViewController *previousController = [myControllers objectAtIndex:0];
    
    [self.navigationController popToViewController:previousController animated:YES];
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
