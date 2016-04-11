//
//  main.m
//  Now Playing in iTunes
//
//  Created by Zachary Whitten on 3/19/15.
//  Copyright (c) 2015 WCNURadio. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[]) {
    [[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
    return NSApplicationMain(argc, argv);
}
