//
//  RSViewController.m
//  GCDMulticastDelegateExample
//
//  Created by Rusher on 13-8-7.
//  Copyright (c) 2013年 iRusher. All rights reserved.
//

#import "RSViewController.h"
#import "MessageHandler.h"
#import "RSHistory.h"
#import "RSChat.h"


@interface RSViewController ()

@end

@implementation RSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    MessageHandler *messageHandler = [[MessageHandler alloc]init];
    RSHistory *history = [[RSHistory alloc]init];
    RSChat *chat = [[RSChat alloc]init];
    
    [messageHandler addDelegate:history delegateQueue:dispatch_get_main_queue()];
    [messageHandler addDelegate:chat delegateQueue:dispatch_get_main_queue()];
    
    [messageHandler acceptMessage];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
