//
//  ApplescriptBridge.m
//  Now Playing in iTunes
//
//  Created by Zachary Whitten on 4/11/16.
//  Copyright © 2016 WCNURadio. All rights reserved.
//

#import "ApplescriptBridge.h"


@implementation ApplescriptBridge



-(id)init{
    Class myClass = NSClassFromString(@"MyStuff");
    _myInstance = [[myClass alloc] init];
    return self;
}

-(Boolean)isiTunesPlaying{
    NSString *result = [_myInstance isiTunesPlaying];
    return [result boolValue];
}

@end
