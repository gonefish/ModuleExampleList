//
//  ListItem.m
//  ModuleExampleList
//
//  Created by 钱国强 on 16/4/21.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import "ListItem.h"
#import "ListModule.h"

#import <GQModularize/GQModuleCenter.h>

@implementation ListItem

+ (instancetype)createItem
{
    static dispatch_once_t onceToken;
    static NSArray *words = nil;
    
    dispatch_once(&onceToken, ^{
        words = @[@"show", @"me", @"the", @"money"];
    });
    
    ListItem *item = [[self alloc] init];
    item.date = [NSDate date];
    
    NSMutableArray *newWords = [NSMutableArray arrayWithArray:words];
    
    NSUInteger count = [newWords count];
    
    for (NSUInteger i = 0; i < count - 1; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [newWords exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
    
    item.settingText = [NSString stringWithFormat:@"SettingsModule Text:%@", [[ListModule invokeWithIdentifier:@"SettingsModuleText"] gq_string]];
    
    item.name = [newWords componentsJoinedByString:@" "];
    
    return item;
}

@end
