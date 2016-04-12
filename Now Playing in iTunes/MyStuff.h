// MyStuff.h

#import <Cocoa/Cocoa.h>

@protocol myStuffProtocol
- (NSString *)    isiTunesPlaying;
- (NSString *)    getInfoFromiTunes:(NSString*)anExemptArtist :(NSString *)aNowPlayingFilepath;
@end