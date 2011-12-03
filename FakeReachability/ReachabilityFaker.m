//
//  ReachabilityFaker.m
//  FakeReachability
//
//  Created by Moritz Haarmann on 03.12.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ReachabilityFaker.h"


@interface ReachabilityFaker(Private)
-(void)updateInternalState:(BOOL)isNowOffline;
@end

@implementation ReachabilityFaker

@synthesize serverSocket;
@synthesize offline;
@synthesize service;

-(id)init {
    self = [super init];
    if ( self ){
        [self updateInternalState:NO];
        self.offline = NO;
    }
    return self;
}

-(void)updateInternalState:(BOOL)isNowOffline {
    if ( isNowOffline != self.offline){
        if ( isNowOffline ){
                            self.service = [[[NSNetService alloc] initWithDomain:@"local." type:@"_fakeoffline._tcp" name:@"Fake Reachability" port:2131] autorelease];
            [self.service publish];
        } else {
            NSLog(@"Removing the service");
            if ( self.service ){
                [self.service stop];
                
                self.service.delegate = nil;

                self.service = nil;

            }
        }
        self.offline = isNowOffline;
    }
}


-(IBAction)buttonChangedAction:(NSSegmentedControl*)sender {
    BOOL isOffline = !( sender.selectedSegment == 0 );
    [self updateInternalState:isOffline];
}

@end
