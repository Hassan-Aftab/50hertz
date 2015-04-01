//
//  ViewController.h
//  Candidates
//
//  Created by Coeus on 31/03/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoFormViewController : UIViewController

@property (strong, nonatomic) NSMutableArray * uniList;
@property (strong, nonatomic) NSManagedObjectContext * managedObjectContext;

@end
