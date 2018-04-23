//
//  NSValueTransformer+CMPredefinedTransformerAdditions.m
//  Mantle
//
//  Created by comma on 2017/10/26.
//

#import "NSValueTransformer+CMPredefinedTransformerAdditions.h"
#import <Mantle/Mantle.h>

NSString * const CMStringValueTransformerName = @"CMStringValueTransformerName";

@implementation NSValueTransformer (CMPredefinedTransformerAdditions)

+ (void)load {
    @autoreleasepool {
        MTLValueTransformer *stringValueTransformer = [MTLValueTransformer transformerUsingForwardBlock:^id(NSNumber *number, BOOL *success, NSError *__autoreleasing *error) {
            if (number == nil) return nil;
            
            if (![number isKindOfClass:NSNumber.class]) {
                if (error != NULL) {
                    NSDictionary *userInfo = @{
                                               NSLocalizedDescriptionKey: NSLocalizedString(@"Could not convert number to string", @""),
                                               NSLocalizedFailureReasonErrorKey: [NSString stringWithFormat:NSLocalizedString(@"Expected an number, got: %@.", @""), number],
                                               MTLTransformerErrorHandlingInputValueErrorKey : number
                                               };
                    
                    *error = [NSError errorWithDomain:MTLTransformerErrorHandlingErrorDomain code:MTLTransformerErrorHandlingErrorInvalidInput userInfo:userInfo];
                }
                *success = NO;
                return nil;
            }
            return number.stringValue;
        } reverseBlock:^id(NSString *str, BOOL *success, NSError *__autoreleasing *error) {
            if (str == nil) return nil;
            
            if (![str isKindOfClass:NSString.class]) {
                if (error != NULL) {
                    NSDictionary *userInfo = @{
                                               NSLocalizedDescriptionKey: NSLocalizedString(@"Could not convert string to number", @""),
                                               NSLocalizedFailureReasonErrorKey: [NSString stringWithFormat:NSLocalizedString(@"Expected an NSString, got: %@.", @""), str],
                                               MTLTransformerErrorHandlingInputValueErrorKey : str
                                               };
                    
                    *error = [NSError errorWithDomain:MTLTransformerErrorHandlingErrorDomain code:MTLTransformerErrorHandlingErrorInvalidInput userInfo:userInfo];
                }
                *success = NO;
                return nil;
            }
            
            NSNumber *result = @(str.doubleValue);
            return result;
        }];
    
        [NSValueTransformer setValueTransformer:stringValueTransformer forName:CMStringValueTransformerName];
        
    }
}

@end
