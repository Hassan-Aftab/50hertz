//
//  Questions.h
//  Candidate
//
//  Created by Coeus on 01/04/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Candidate;

@interface Questions : NSManagedObject

@property (nonatomic, retain) NSString * text;
@property (nonatomic, retain) NSString * correctAns;
@property (nonatomic, retain) NSString * subject;
@property (nonatomic, retain) NSNumber * qNo;
@property (nonatomic, retain) NSSet *solvedBy;
@property (nonatomic, retain) NSManagedObject *ofSubject;
@property (nonatomic, retain) NSSet *hasOptions;
@end

@interface Questions (CoreDataGeneratedAccessors)

- (void)addSolvedByObject:(Candidate *)value;
- (void)removeSolvedByObject:(Candidate *)value;
- (void)addSolvedBy:(NSSet *)values;
- (void)removeSolvedBy:(NSSet *)values;

- (void)addHasOptionsObject:(NSManagedObject *)value;
- (void)removeHasOptionsObject:(NSManagedObject *)value;
- (void)addHasOptions:(NSSet *)values;
- (void)removeHasOptions:(NSSet *)values;

@end
