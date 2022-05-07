//
//  ViewController.m
//  msgSend
//
//  Created by gaoguangxiao on 2018/7/24.
//  Copyright © 2018年 gaoguangxiao. All rights reserved.
//

#import "ViewController.h"
#import "Animal.h"
#import "NSString+B.h"
#import <objc/runtime.h>
@interface ViewController ()

@property(nonatomic,copy)NSString *namr;

//

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Animal *a = [Animal new];
//    [a performSelector:NSSelectorFromString(@"eatStone")];
    
    //获取动物属性
//    unsigned int propertyCount;
//    objc_property_t *properties = class_copyPropertyList([Animal class], &propertyCount);
//    for (int i = 0; i < propertyCount; i ++) {
//        objc_property_t property = properties[i];
//        NSLog(@"属性：%d-----%s", i, property_getName(property));
//    }
//
//    //获取动物 成员变量
//    unsigned int ivarCount;
//    Ivar *ivars = class_copyIvarList([Animal class], &ivarCount);
//        for (int i = 0; i < ivarCount; i ++) {
//            Ivar ivar = ivars[i];
//            NSLog(@"ivar：%d-----%s", i, ivar_getName(ivar));
//        }

    //获取方法列表
        unsigned int methodCount;
        Method *methods = class_copyMethodList([Animal class], &methodCount);
        for (int i = 0; i < methodCount; i ++) {
            Method m = methods[i];
            NSLog(@"SEL：%d-----%s", i, sel_getName(method_getName(m)));
        }

    [a testBig];
    
//    NSString *d = [NSString stringWithString:@"10"];
//    d.name = @"111";
//    NSLog(@"分类：%@",d.name);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
