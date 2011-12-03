//
//  ReachabilityFaker.h
//  FakeReachability
//
//  Created by Moritz Haarmann on 03.12.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GCDAsyncSocket.h"

@interface ReachabilityFaker : NSObject<GCDAsyncSocketDelegate>

@property (nonatomic,retain) GCDAsyncSocket* serverSocket;
@property (nonatomic) BOOL offline;
@property (nonatomic,retain) NSNetService* service;


@end
