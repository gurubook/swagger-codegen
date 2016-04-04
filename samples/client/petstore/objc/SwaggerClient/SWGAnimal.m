
#import "SWGAnimal.h"

@implementation SWGAnimal

- (instancetype)init {
  self = [super init];

  if (self) {
    // initialize property's default value, if any
    
  }

  return self;
}

/**
 Maps "discriminator" value to the sub-class name, so that inheritance is supported.
 */
- (id)initWithDictionary:(NSDictionary *)dict error:(NSError *__autoreleasing *)err {


    NSString * discriminatedClassName = [dict valueForKey:@"className"];

    if(discriminatedClassName == nil ){
         return [super initWithDictionary:dict error:err];
    }

    Class class = NSClassFromString([@"SWG" stringByAppendingString:discriminatedClassName]);

    if([self class ] == class) {
        return [super initWithDictionary:dict error:err];
    }


    return [[class alloc] initWithDictionary:dict error: err];

}

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"className": @"className" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

	

@end

