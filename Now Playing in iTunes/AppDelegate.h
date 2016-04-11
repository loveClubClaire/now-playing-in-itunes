//
//  AppDelegate.h
//  Now Playing in iTunes
//
//  Created by Zachary Whitten on 3/19/15.
//  Copyright (c) 2015 WCNURadio. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ApplescriptBridge.h"



@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (strong, nonatomic) NSStatusItem *statusItem;
@property ApplescriptBridge *myBridge;

@end

