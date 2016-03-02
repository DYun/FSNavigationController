//
//  FSNavigationController.m
//  FSNavigationController
//
//  Created by Danyun Liu on 3/1/16.
//  Copyright © 2016 liudanyun@gmail.com. All rights reserved.
//


#import "FSNavigationController.h"


@implementation FSNavigationController {
    UIPanGestureRecognizer * _fullScreenPanGestureRecognizer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
    
    id _cachedInteractionController = [self valueForKey:@"_cachedInteractionController"];
    if (_cachedInteractionController && [_cachedInteractionController respondsToSelector:@selector(handleNavigationTransition:)]) {
        _fullScreenPanGestureRecognizer = [[UIPanGestureRecognizer alloc]initWithTarget:_cachedInteractionController
                                                                                 action:@selector(handleNavigationTransition:)];
        [self.view addGestureRecognizer:_fullScreenPanGestureRecognizer];
    }

#pragma clang diagnostic pop
    
}


@end
