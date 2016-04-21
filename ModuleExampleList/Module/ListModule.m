//
//  ListModule.m
//  ModuleExampleList
//
//  Created by 钱国强 on 16/4/9.
//  Copyright © 2016年 Qian GuoQiang. All rights reserved.
//

#import "ListModule.h"
#import "UIStoryboard+List.h"
#import "DetailViewController.h"

@implementation ListModule

- (id)performActionWithIdentifier:(NSString *)identifier options:(NSDictionary *)options
{
    if ([identifier isEqualToString:GQModulePortalViewControllerIdentifier]) {
        return [[UIStoryboard listStoryboard] instantiateInitialViewController];
    } else if ([identifier isEqualToString:@"NewDetailViewController"]) {
        DetailViewController *vc = [[UIStoryboard listStoryboard] instantiateViewControllerWithIdentifier:@"DetailViewController"];
        
        [vc setDetailItem:options[@"object"]];
        
        [self.mainNavigationController pushViewController:vc animated:YES];
        
        return vc;
    }
    
    return nil;
}

@end
