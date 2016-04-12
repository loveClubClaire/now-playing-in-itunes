// MyStuff.h

#import <Cocoa/Cocoa.h>

@protocol myStuffProtocol
- (NSString *)    getVersion;
- (NSString *)    firstSelection;
- (void)          iTunesPause;
- (NSString *)    isiTunesPlaying;
- (NSString *)    getInfoFromiTunes:(NSString*)anExemptArtist :(NSString *)aNowPlayingFilepath;

@end