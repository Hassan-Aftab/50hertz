//
//  CandidateService.h
//  Candidate
//
//  Created by Coeus on 01/04/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "BaseService.h"
#include "Candidate.h"

@interface CandidateService : BaseService


-(void) saveOnLocalSpace:(Candidate *)cand;
@property (strong, nonatomic) NSManagedObjectContext * managedObjectContext;

@end
