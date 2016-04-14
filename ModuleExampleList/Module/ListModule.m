//
//  ListModule.m
//  ModuleExampleList
//
//  Created by 钱国强 on 16/4/9.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import "ListModule.h"
#import "UIStoryboard+List.h"

@implementation ListModule

- (id)performActionWithIdentifier:(NSString *)identifier options:(NSDictionary *)options
{
    return [[UIStoryboard listStoryboard] instantiateInitialViewController];
}

@end
