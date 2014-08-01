#import "LRBaseModel.h"

@implementation LRBaseModel

+ (instancetype)baseModelWithDictionary:(NSDictionary *)dictionary
{
    return [[self alloc] initWithDictionary:dictionary];
}

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    if (!(self = [super init])) return nil;
    
    // Property - key mapping via KVC
    [self setValuesForKeysWithDictionary:dictionary];
    
    return self;
}

#pragma mark - KVC handling

- (void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues
{
    // Let's compute the valid mappings. Only map the properties
    // in the mappings dictionary defined in LRBaseModelProtocol.
    NSMutableDictionary *validMappings = [NSMutableDictionary dictionary];
    
    [keyedValues enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        
        NSString *objectKey = [self.mappings valueForKeyPath:key];
        
        if (objectKey)
        {
            validMappings[objectKey] = obj;
        }
    }];
    
    [super setValuesForKeysWithDictionary:validMappings];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    NSAssert(NO, @"Property \"%@\" not found in object of type \"%@\"", key, NSStringFromClass(self.class));
    [super setValue:value forUndefinedKey:key];
}

#pragma mark - LRBaseModelMappings

- (NSDictionary *)mappings
{
    [NSException raise:NSInternalInconsistencyException
				format:@"%@: Subclasses must override this method and provide the necessary mappings", NSStringFromSelector(_cmd)];
    
    return nil;
}

#pragma mark - LRBaseModelSerializable

+ (id<LRBaseModelSerializable>)deserialize:(NSDictionary *)dictionary
{
    [NSException raise:NSInternalInconsistencyException
				format:@"%@: Subclasses must override this method", NSStringFromSelector(_cmd)];
    
    return nil;
}

- (NSDictionary *)serialize
{
    [NSException raise:NSInternalInconsistencyException
				format:@"%@: Subclasses must override this method", NSStringFromSelector(_cmd)];
    
    return nil;
}

@end
