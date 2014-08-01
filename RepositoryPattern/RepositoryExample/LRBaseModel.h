#import "LRBaseModelSerializable.h"
#import "LRBaseModelMappings.h"

@interface LRBaseModel : NSObject <LRBaseModelMappings, LRBaseModelSerializable>

/**
 Creates a new object via KVC.
 
 @param dictionary NSDictionary with the correct mappings (@{ key : value }).
 Via KVC, the object must have a property whose name is exactly the same as
 'key'. Thus, 'value' will be attached to that property.
 
 @discussion Forcing the object to have the very same property names
 as the keys in the dictionary may not be the best idea. Some/most keys
 coming from XML/JSON via APIs are not very compliant with cocoa conventions.
 In order to be able to have an object whose property names are different
 from the keys in the dictionary, the 'mappings' property defined in
 LRBaseModelProtocol must be provided.
 
 Example:
 
 dictionary: @{ uglyKey : value }
 
 object: property 'awesomeKey'
 
 The object class (sublcass of LRBaseModel) must have:
 
 - (NSDictionary *)mappings
 {
 return @{ @"uglyKey" : @"awesomeKey" };
 }
 
 Thus, we'll have a property 'awesomeKey' whose value is 'value'.
 
 @return A new LRBaseModel object.
 */

+ (instancetype)baseModelWithDictionary:(NSDictionary *)dictionary;

@end
