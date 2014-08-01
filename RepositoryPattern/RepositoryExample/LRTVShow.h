#import "LRBaseModel.h"

@interface LRTVShow : LRBaseModel

@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *overview;
@property (nonatomic, copy, readonly) NSString *network;
@property (nonatomic, strong, readonly) NSDate *premiereDate;
@property (nonatomic, strong, readonly) NSURL *traktURL;
@property (nonatomic, strong, readonly) NSURL *posterURL;

+ (instancetype)tvshowWithDictionary:(NSDictionary *)dictionary;

@end
