//
//  NSString+B.m
//  SortMath
//
//  Created by gaoguangxiao on 2018/8/2.
//  Copyright © 2018年 gaoguangxiao. All rights reserved.
//

#import "NSString+B.h"
#import <objc/runtime.h>
static const void *nameKey = &nameKey;

@implementation NSString (B)

- (NSString *)name {
    return  objc_getAssociatedObject(self, nameKey);
}
- (void)setName:(NSString *)name {
    objc_setAssociatedObject(self, nameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

+(void)test1{
    NSLog(@"测试2");
}

//- (NSString *)substringFromIndex:(NSUInteger)from

//+ (instancetype)stringWithString:(NSString *)string{
//    
//    return @"+切割";
//}
//
//- (NSString *)substringFromIndex:(NSUInteger)from {
//    
//    return @"-切割";
//}


@end
