//
//  ViewController.m
//  Candidates
//
//  Created by Coeus on 31/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "InfoFormViewController.h"
#import "BaseService.h"
#import "CandidateService.h"

@interface InfoFormViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tfName;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgGender;
@property (weak, nonatomic) IBOutlet UITextField *tfMobile;
@property (weak, nonatomic) IBOutlet UITextField *tfEmail;
@property (weak, nonatomic) IBOutlet UITextField *tfCNIC;
@property (weak, nonatomic) IBOutlet UITextField *tfCGPA;
@property (weak, nonatomic) IBOutlet UITextField *tfDegree;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sgExperience;
@property (weak, nonatomic) IBOutlet UIPickerView *pkUniversity;

@end

@implementation InfoFormViewController
- (IBAction)enterData:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    
    if ([_tfName.text  isEqual: @""] || [_tfMobile.text  isEqual: @""] ||
        [_tfEmail.text  isEqual: @""] || [_tfEmail.text  isEqual: @""] ||
        [_tfCGPA.text  isEqual: @""] || [_tfCNIC.text  isEqual: @""] ||
        [_tfDegree.text  isEqual: @""]) {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Incomplete Information" message:@"Please fill all fields" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
        [alert show];
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Information Accepted" message:@"You may proceed" delegate:nil cancelButtonTitle:@"Thanks" otherButtonTitles: nil];
        
        [alert show];
        
        //NSManagedObjectContext *context = [self managedObjectContext];
        Candidate *candidateInfo = [NSEntityDescription
                                    insertNewObjectForEntityForName:@"Candidate"
                                    inManagedObjectContext:context];
        
        //Candidate *candidateInfo = [Candidate new];
        candidateInfo.name = _tfName.text;
        candidateInfo.mobile = _tfMobile.text;
        candidateInfo.cnic = _tfCNIC.text;
        candidateInfo.cgpa =  @([_tfCGPA.text intValue]);
        candidateInfo.email = _tfEmail.text;
        candidateInfo.degree = _tfDegree.text;
        candidateInfo.gender = _sgGender.selectedSegmentIndex == 0 ? @"Male":@"Female";
        candidateInfo.university = [_uniList objectAtIndex:[_pkUniversity selectedRowInComponent:0]];
        candidateInfo.experience =  [[NSDecimalNumber alloc]initWithInt:_sgGender.selectedSegmentIndex];
        
        //CandidateService * candidateService = [CandidateService new];
        
        //[candidateService saveOnLocalSpace:candidateInfo];
    }
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Candidate"
                                              inManagedObjectContext:context];
    NSError *error;
    [fetchRequest setEntity:entity];
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    for (Candidate *info in fetchedObjects) {
        NSLog(@"Name: %@", info.name);
        
    }
    
    [self performSegueWithIdentifier:@"ontoSayThanks" sender:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    _uniList = [[NSMutableArray alloc]initWithObjects:@"PUCIT",@"FAST",@"NUST",@"COMSATS",@"LUMS", nil];

}

// The number of columns of data
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _uniList.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _uniList[row];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
