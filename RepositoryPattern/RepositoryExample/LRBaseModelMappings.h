#import <Foundation/Foundation.h>

@protocol LRBaseModelMappings <NSObject>

/**
 Dictionary with the correct mappings (@{ key : propertyName }).
 @see baseModelObjectWithDictionary: documentation.
 */
@property (nonatomic, readonly) NSDictionary *mappings;

@end
