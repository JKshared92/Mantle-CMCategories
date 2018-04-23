//
//  MTLJSONAdapter+Transformer.h
//  Pods
//
//  Created by comma on 2017/8/8.
//
//

#import <Mantle/Mantle.h>

@interface MTLJSONAdapter (Transformer)
    
+ (id)cm_modelOfClass:(Class)modelClass fromJSONDictionary:(NSDictionary *)JSONDictionary;

+ (NSArray *)cm_modelsOfClass:(Class)modelClass fromJSONArray:(NSArray *)JSONArray;

+ (NSDictionary *)cm_JSONDictionaryFromModel:(id<MTLJSONSerializing>)model;
    
+ (NSArray *)cm_JSONArrayFromModels:(NSArray *)models;

@end
