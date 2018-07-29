//
//  Animal.m
//  msgSend
//
//  Created by gaoguangxiao on 2018/7/24.
//  Copyright © 2018年 gaoguangxiao. All rights reserved.
//

#import "Animal.h"
#import <objc/runtime.h>

#import "Dog.h"
@implementation Animal

void eatStone(){
    NSLog(@"吃骨头");
}

+(BOOL)resolveInstanceMethod:(SEL)sel{
    NSLog(@"第一步处理：%@",NSStringFromSelector(sel));
    if (sel == NSSelectorFromString(@"eatStone")) {
         class_addMethod([self class], sel, (IMP)eatStone, "v@:");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}



//备援转发
-(id)forwardingTargetForSelector:(SEL)aSelector{
    NSLog(@"selector name:%@",NSStringFromSelector(aSelector));

    Dog *d = [Dog new];
    if ([d respondsToSelector:aSelector]) {
        return d;
    }
    return [super forwardingTargetForSelector:aSelector];
}


//第三中，
-(NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    NSLog(@"方法签名:%@",NSStringFromSelector(aSelector));
    if (aSelector == NSSelectorFromString(@"eatStone")) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [super methodSignatureForSelector:aSelector];
}
-(void)forwardInvocation:(NSInvocation *)anInvocation{
    if ([anInvocation selector] ==  NSSelectorFromString(@"eatStone")) {
        Dog *d = [Dog new];
        [d eatStone];
    }
}


@end
