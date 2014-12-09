//
// Created by Neo He on 9/12/14.
// Copyright (c) 2014 Neo He. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ViewController;
@class GameController;

@interface Mediator : NSObject {
    ViewController *viewCtrl;
    GameController *gameCtrl;
}

+ (Mediator *)getInstance;

@property ViewController *viewCtrl;

- (void)startGame;


// UI

- (void)updateScore:(int)score;

- (void)setProgress:(float)progress;
- (void)setProgress:(float)progress animated:(BOOL)animated;

@end