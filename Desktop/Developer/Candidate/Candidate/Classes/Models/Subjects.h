//
//  Subjects.h
//  Candidate
//
//  Created by Coeus on 01/04/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Questions;

@interface Subjects : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *hasQuestions;
@end

@interface Subjects (CoreDataGeneratedAccessors)

- (void)addHasQuestionsObject:(Questions *)value;
- (void)removeHasQuestionsObject:(Questions *)value;
- (void)addHasQuestions:(NSSet *)values;
- (void)removeHasQuestions:(NSSet *)values;

@end
