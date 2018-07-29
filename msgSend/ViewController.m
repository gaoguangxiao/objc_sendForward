//
//  ViewController.m
//  msgSend
//
//  Created by gaoguangxiao on 2018/7/24.
//  Copyright © 2018年 gaoguangxiao. All rights reserved.
//

#import "ViewController.h"
#import "Animal.h"
@interface ViewController ()

@property(nonatomic,copy)NSString *namr;

//

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Animal *a = [Animal new];
    [a performSelector:NSSelectorFromString(@"eatStone")];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
