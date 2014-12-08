//
//  GameController.h
//  TheCalcGame
//
//  Created by Neo on 8/12/14.
//  Copyright (c) 2014 Neo He. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "Utils.h"

#define GAME_DURATION_PER_DEAL 4.0

@interface GameController : NSObject {
	float duration;
	float timePast;
	
	NSTimer *timer;
	UIProgressView * __weak progressView;
}

- (GameController *) initWithProgressView:(UIProgressView *)aProgressView;

- (void) startTimer;

@end
