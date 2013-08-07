//
//  RSChat.m
//  GCDMulticastDelegateExample
//
//  Created by Rusher on 13-8-7.
//  Copyright (c) 2013年 iRusher. All rights reserved.
//

#import "RSChat.h"

@implementation RSChat

-(void) messageDidReceived:(NSString *) message
{
    NSLog(@"[in chat] : %@",message);
}

@end
