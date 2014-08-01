#import <Foundation/Foundation.h>

@interface LRTVShowParser : NSObject

- (NSArray *)tvshowsFromData:(NSData *)data error:(__autoreleasing NSError **)error;

@end
