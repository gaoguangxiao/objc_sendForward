//
//  Animal.h
//  msgSend
//
//  Created by gaoguangxiao on 2018/7/24.
//  Copyright © 2018年 gaoguangxiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property (nonatomic,strong) NSString *color;

//类实现了+load方式
//   分类未实现+load,1、非懒加载，mach数据加载到内存通过map_imags。分类的方法在编译器就开始合并
//   分类实现+load，分类的方法runtime方式加入
//
//类未实现+load方式，
//分类实现+load
//类的加载流程是非懒加载形式，是在编译器确定。
//分类未实现，编译时合并

//两个相同的分类方法，会执行哪一个？
//Category load 执行顺序与其在Compile Sources中出现的顺序一致,而方法列表是按编译的顺序的逆序进行排列,先编译的在列表的尾部,后编译的在列表的前面.
- (void)testBig;

@end
