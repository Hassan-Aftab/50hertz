//
//  CandidateService.m
//  Candidate
//
//  Created by Coeus on 01/04/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "CandidateService.h"

@implementation CandidateService

-(void) saveOnLocalSpace:(Candidate *)cand
{
    
    
    NSManagedObjectContext *context = [self managedObjectContext];
    Candidate *candidateInfo = [NSEntityDescription
                                insertNewObjectForEntityForName:@"Candidate"
                                inManagedObjectContext:context];

    candidateInfo = cand;
}

@end
