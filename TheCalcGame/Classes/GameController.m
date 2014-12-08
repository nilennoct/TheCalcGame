//
//  GameController.m
//  TheCalcGame
//
//  Created by Neo on 8/12/14.
//  Copyright (c) 2014 Neo He. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (GameController *)initWithProgressView:(UIProgressView *)aProgressView {
	if (self = [super init]) {
		duration = 4.0;
		
		progressView = aProgressView;
	}
	
	return self;
}

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
	[progressView setProgress:0];
}

- (void)updateProgressView {
	if (timePast < duration) {
		timePast += duration / 100;
		[progressView setProgress:timePast / duration animated:YES];
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
