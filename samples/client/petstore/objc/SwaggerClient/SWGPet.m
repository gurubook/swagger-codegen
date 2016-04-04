
#import "SWGPet.h"

@implementation SWGPet

- (instancetype)init {
  self = [super init];

  if (self) {
    // initialize property's default value, if any
    
  }

  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"gender": @"gender", @"category": @"category", @"name": @"name", @"photoUrls": @"photoUrls", @"tags": @"tags", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"gender", @"category", @"tags", @"status"];

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

	
		
- (void)setGenderWithNSString:(NSString *)value
{
    NSArray *genderArray = @[@"MALE", @"FEMALE"];
    _gender  = [genderArray indexOfObject:value];
    
}
-(id)JSONObjectForGender
{
    NSArray *genderArray = @[@"MALE", @"FEMALE"];
    return [genderArray objectAtIndex:_gender];
}			
	
	
	
	
	
		
- (void)setStatusEnumWithNSString:(NSString *)value
{
    NSArray *statusArray = @[@"available", @"pending", @"sold"];
    _status  = [statusArray indexOfObject:value];
    
}
-(id)JSONObjectForStatusEnum
{
    NSArray *statusArray = @[@"available", @"pending", @"sold"];
    return [statusArray objectAtIndex:_status];
}			
	

@end

