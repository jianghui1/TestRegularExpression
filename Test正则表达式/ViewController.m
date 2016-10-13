//
//  ViewController.m
//  Test正则表达式
//
//  Created by ys on 16/3/18.
//  Copyright © 2016年 jzh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 设置谓词
    NSString *string = @"dsfojojojo;j";
    NSString *string1 = @"dojfiomm_jfdsoij_fjdios_fodsofj_fodj";
    NSString *string2 = @"dfhkmm_34_fdiojio_jfeiojf";
    NSString *string3 = @"diofjomm_34_53_3554_";
    NSString *string4 = @"jfdiojfiomm_73894789_3987984_39827498ODFIO";
    NSString *string5 = @"mm_73894789_3987984_39827498";

    
//    NSString *format = @"mm_[0-9]+_[0-9]+_[0-9]+";
        NSString *format = @".+mm_[0-9]+_[0-9]+_[0-9]+.+";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", format];
    NSLog(@"matches == %d", [predicate evaluateWithObject:string]);
    NSLog(@"matches1 == %d", [predicate evaluateWithObject:string1]);
    NSLog(@"matches2 == %d", [predicate evaluateWithObject:string2]);
    NSLog(@"matches3 == %d", [predicate evaluateWithObject:string3]);
    NSLog(@"matches4 == %d", [predicate evaluateWithObject:string4]);
    NSLog(@"matches5 == %d", [predicate evaluateWithObject:string5]);
    
    NSString *str = @"3789479875";
    NSString *format1 = @"[1-9]";
    NSPredicate *predicate1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", format1];
    NSLog(@"str == %d", [predicate1 evaluateWithObject:str]);
    
}

@end
