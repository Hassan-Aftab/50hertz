//
//  BaseService.m
//  Candidate
//
//  Created by Coeus on 01/04/2015.
//  Copyright (c) 2015 Coeus. All rights reserved.
//

#import "BaseService.h"
#import <SystemConfiguration/SystemConfiguration.h>

@implementation BaseService

-(BOOL) checkInternetConnection;
{
    
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus networkStatus = [reachability currentReachabilityStatus];
    
    
    
    return networkStatus != NotReachable;
    
}

@end
