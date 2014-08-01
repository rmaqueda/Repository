#import <Foundation/Foundation.h>

// NSPropertyListSerialization compatibility
NS_INLINE id LRNilToEmptyString(id obj)
{
    return obj ? : @"";
}

NS_INLINE id LREmptyStringToNil(id obj)
{
    return [obj isEqual:@""] ? nil : obj;
}

@protocol LRBaseModelSerializable <NSObject>

+ (id<LRBaseModelSerializable>)deserialize:(NSDictionary *)dictionary;

- (NSDictionary *)serialize;

@end