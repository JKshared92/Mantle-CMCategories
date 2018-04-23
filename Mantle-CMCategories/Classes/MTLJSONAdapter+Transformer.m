//
//  MTLJSONAdapter+Transformer.m
//  Pods
//
//  Created by comma on 2017/8/8.
//
//

#import "MTLJSONAdapter+Transformer.h"

@implementation MTLJSONAdapter (Transformer)

+ (id)cm_modelOfClass:(Class)modelClass fromJSONDictionary:(NSDictionary *)JSONDictionary{
    if (!JSONDictionary) {
        return nil;
    }
    NSError *error;
    id model = [self modelOfClass:modelClass fromJSONDictionary:JSONDictionary error:&error];
    if (error) {
        NSLog(@"\n JSONDictionary转model出错\n 错误原因：%@\n",error);
        return nil;
    }
    return model;
}
    
+ (NSArray *)cm_modelsOfClass:(Class)modelClass fromJSONArray:(NSArray *)JSONArray{
    if (!JSONArray) {
        return nil;
    }
    NSError *error;
    NSArray *modelsOfClass = [self modelsOfClass:modelClass fromJSONArray:JSONArray error:&error];
    if (error) {
        NSLog(@"\n JSONArray转models出错\n 错误原因：%@\n",error);
        return nil;
    }
    return modelsOfClass;
}
    
+ (NSDictionary *)cm_JSONDictionaryFromModel:(id<MTLJSONSerializing>)model{
    if (!model) {
        return nil;
    }
    NSError *error;
    NSDictionary *jsonValue = [self JSONDictionaryFromModel:model error:&error];
    if (error) {
        NSLog(@"\n model转JSONDictionary出错\n 错误原因：%@\n",error);
        return nil;
    }
    return jsonValue;
}
    
+ (NSArray *)cm_JSONArrayFromModels:(NSArray *)models{
    if (!models) {
        return nil;
    }
    NSError *error;
    NSArray *jsonValueArray = [self  JSONArrayFromModels:models error:&error];
    if (error) {
        NSLog(@"\n models转JSONArray出错\n 错误原因：%@\n",error);
    }
    return jsonValueArray;
}
    
@end
