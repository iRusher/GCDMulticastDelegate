//
//  MessageHandler.m
//  GCDMulticastDelegateExample
//
//  Created by Rusher on 13-8-7.
//  Copyright (c) 2013年 iRusher. All rights reserved.
//

#import "MessageHandler.h"
#import "GCDMulticastDelegate.h"

@implementation MessageHandler

-(id)init{
    
    self = [super init];
    if (self) {
        // init multicastDelegate
        _multicastDelegate = [[GCDMulticastDelegate alloc]init];
    }
    return self;
}


-(void) acceptMessage{
    // send message to delegate
    NSString *s = @"hello";
    [self.multicastDelegate messageDidReceived:s];
    NSLog(@"[accept]:%@",s);
}

- (void)addDelegate:(id)delegate delegateQueue:(dispatch_queue_t)delegateQueue
{
	dispatch_block_t block = ^{
		[_multicastDelegate addDelegate:delegate delegateQueue:delegateQueue];
	};
	
    block();
}

- (void)removeDelegate:(id)delegate delegateQueue:(dispatch_queue_t)delegateQueue
{
    dispatch_block_t block = ^{
		[_multicastDelegate removeDelegate:delegate delegateQueue:delegateQueue];
	};
    
    block();
}

@end
