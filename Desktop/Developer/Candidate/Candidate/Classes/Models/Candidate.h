//
//  Candidate.h
//  Candidate
//
//  Created by Coeus on 01/04/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Candidate : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * mobile;
@property (nonatomic, retain) NSString * cnic;
@property (nonatomic, retain) NSNumber * cgpa;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * degree;
@property (nonatomic, retain) NSString * university;
@property (nonatomic, retain) NSDecimalNumber * experience;
@property (nonatomic, retain) NSString * gender;
@property (nonatomic, retain) NSSet *solve;
@end

@interface Candidate (CoreDataGeneratedAccessors)

- (void)addSolveObject:(NSManagedObject *)value;
- (void)removeSolveObject:(NSManagedObject *)value;
- (void)addSolve:(NSSet *)values;
- (void)removeSolve:(NSSet *)values;

@end
