//
//  Animal+BigA.m
//  msgSend
//
//  Created by gaoguangxiao on 2022/5/7.
//  Copyright © 2022 gaoguangxiao. All rights reserved.
//

#import "Animal+BigA.h"

@implementation Animal (BigA)

//而方法列表是按编译的顺序的逆序进行排列,先编译的在列表的尾部,后编译的在列表的前面.
//如:
- (void)testBig {
    NSLog(@"分类A大");
}
@end
