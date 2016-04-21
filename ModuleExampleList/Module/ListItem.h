//
//  ListItem.h
//  ModuleExampleList
//
//  Created by 钱国强 on 16/4/21.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListItem : NSObject

@property (nonatomic, strong) NSDate *date;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *settingText;

+ (instancetype)createItem;

@end
