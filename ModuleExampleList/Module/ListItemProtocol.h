//
//  ListItemProtocol.h
//  ModuleExampleList
//
//  Created by 钱国强 on 16/4/21.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ListItem <NSObject>

- (NSData *)date;
- (NSString *)name;
- (NSString *)settingText;

@end
