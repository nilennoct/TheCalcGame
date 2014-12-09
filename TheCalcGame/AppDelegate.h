//
//  AppDelegate.h
//  TheCalcGame
//
//  Created by Neo on 7/12/14.
//  Copyright (c) 2014 Neo He. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Mediator.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    Mediator *mediator;
}

@property (strong, nonatomic) UIWindow *window;


@end

