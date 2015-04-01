//
//  Options.h
//  Candidate
//
//  Created by Coeus on 01/04/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Questions;

@interface Options : NSManagedObject

@property (nonatomic, retain) NSString * optionText;
@property (nonatomic, retain) Questions *forQuestion;

@end
