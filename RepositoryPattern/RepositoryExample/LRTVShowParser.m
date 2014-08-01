#import "LRTVShowParser.h"
#import "LRTVShow.h"

@implementation LRTVShowParser

- (NSArray *)tvshowsFromData:(NSData *)data error:(__autoreleasing NSError **)error
{
    NSArray *jsonTVShows = [NSJSONSerialization JSONObjectWithData:data
                                                           options:0
                                                             error:error];
    
    NSMutableArray *tvshows = [NSMutableArray arrayWithCapacity:[jsonTVShows count]];
    
    for (NSDictionary *tvshowDict in jsonTVShows)
    {
        [tvshows addObject:[LRTVShow tvshowWithDictionary:tvshowDict]];
    }
    
    return [tvshows copy];
}

@end
