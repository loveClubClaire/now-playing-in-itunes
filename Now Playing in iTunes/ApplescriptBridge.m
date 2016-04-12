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

-(Boolean)getInfoFromiTunes_ExemptArtist:(NSString *)anExemptArtist NowPlayingFilepath:(NSString *)aNowPlayingFilepath{
    NSString *applescriptFilepath = [self convertToApplescriptFilepath:aNowPlayingFilepath];
    NSString *result = [_myInstance getInfoFromiTunes:anExemptArtist :applescriptFilepath];
    return [result boolValue];
}

-(NSString*)convertToApplescriptFilepath:(NSString *)aFilepath{
    //Get the volumeName of the filepath because it is not a part of a POSIX filepath but it is a part of an Applescript filepath
    NSURL *url = [NSURL fileURLWithPath:aFilepath];
    NSString *volumeName;
    [url getResourceValue:&volumeName forKey:NSURLVolumeNameKey error:nil];
    
    //Split the POSIX filepath into a string array using / as the delimiter. Because all filepaths begin with a /, the first element of the array will be an empty string so we start itterating over the array at position 1 and initalize myString to the volumeName.
    NSArray<NSString *> *myStringArray = [aFilepath componentsSeparatedByString:@"/"];
    NSString *myString = volumeName;
    for (int i = 1; i < myStringArray.count; i++) {
         myString = [NSString stringWithFormat:@"%@:%@",myString,[myStringArray objectAtIndex:i]];
    }
    
    return myString;
}

@end
