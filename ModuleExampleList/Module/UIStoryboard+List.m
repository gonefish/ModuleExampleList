//
//  UIStoryboard+List.m
//  ModuleExampleList
//
//  Created by 钱国强 on 16/4/14.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import "UIStoryboard+List.h"
#import "ListModule.h"

@implementation UIStoryboard (List)

+ (instancetype)listStoryboard
{
    return [UIStoryboard storyboardWithName:@"ListMain"
                                     bundle:[NSBundle bundleForClass:[ListModule class]]];
}

@end
