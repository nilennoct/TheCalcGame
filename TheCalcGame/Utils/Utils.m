//
//  Utils.m
//  TheCalcGame
//
//  Created by Neo on 8/12/14.
//  Copyright (c) 2014 Neo He. All rights reserved.
//

#import "Utils.h"

@implementation Utils

+ (int) randomIntFrom:(int)min to:(int)max {
	return [[MT_Rand getInstance] rand] % (max - min + 1) + min;
}

+ (BOOL) randomBool {
	return [[MT_Rand getInstance] rand] % 2 == 0;
}

@end
