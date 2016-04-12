//
//  ApplescriptBridge.h
//  Now Playing in iTunes
//
//  Created by Zachary Whitten on 4/11/16.
//  Copyright © 2016 WCNURadio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyStuff.h"

@interface ApplescriptBridge : NSObject

@property id<myStuffProtocol> myInstance;

-(Boolean)isiTunesPlaying;
-(Boolean)getInfoFromiTunes_ExemptArtist:(NSString *)anExemptArtist NowPlayingFilepath:(NSString *)aNowPlayingFilepath;
-(NSString*)convertToApplescriptFilepath:(NSString *)aFilepath;

@end
