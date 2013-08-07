//
//  RSHistory.m
//  GCDMulticastDelegateExample
//
//  Created by Rusher on 13-8-7.
//  Copyright (c) 2013年 iRusher. All rights reserved.
//

#import "RSHistory.h"

@implementation RSHistory

-(void) messageDidReceived:(NSString *) message
{
    NSLog(@"[in history] : %@",message);
}

@end
