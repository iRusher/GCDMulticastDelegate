//
//  MessageHandler.h
//  GCDMulticastDelegateExample
//
//  Created by Rusher on 13-8-7.
//  Copyright (c) 2013年 iRusher. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GCDMulticastDelegate;

@interface MessageHandler : NSObject

@property (nonatomic,strong) id multicastDelegate;

-(void) acceptMessage;

- (void)addDelegate:(id)delegate delegateQueue:(dispatch_queue_t)delegateQueue;
- (void)removeDelegate:(id)delegate delegateQueue:(dispatch_queue_t)delegateQueue;

@end

@protocol MessageHandlerDelegate

@optional
-(void) messageDidReceived:(NSString *) message;

@end
