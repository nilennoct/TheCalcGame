//
//  GameController.m
//  TheCalcGame
//
//  Created by Neo on 8/12/14.
//  Copyright (c) 2014 Neo He. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (GameController *)init {
    if (self = [super init]) {
        duration = 4.0;

        mediator = [Mediator getInstance];
    }

    return self;
}

- (void)start {
    score = 0;
    [self startTimer];
}
- (void)nextTurn {
    [mediator updateScore:++score];
    [self startTimer];
}

- (BOOL)getEquality {
    BOOL equality = [Utils randomBool];

    if (equality == lastEquality) {
        if (sameEqualityCount >= 2 && [Utils randomBoolWithTrue:sameEqualityCount + 1]) {
            equality = !equality;
            sameEqualityCount = 0;
        }
        else {
            ++sameEqualityCount;
        }
    }
    else {
        sameEqualityCount = 0;
    }

    return lastEquality = equality;
}

// Timer

- (void)startTimer {
    if (timer) {
        [self clearTimer];
    }

    timer = [NSTimer scheduledTimerWithTimeInterval:duration / 100 target:self selector:@selector(updateProgressView) userInfo:nil repeats:YES];
}

- (void)clearTimer {
	[timer invalidate];
	timer = nil;
	timePast = 0;
	[mediator setProgress:0];
}

- (void)updateProgressView {
    NSLog(@"timePast: %f", timePast);
	if (timePast < duration) {
		timePast += duration / 100;
		[mediator setProgress:timePast / duration animated:YES];
	}
	else {
		[self clearTimer];
		NSLog(@"Game Over!");
	}
}

- (void)dealloc {
	timer = nil;
}

@end
