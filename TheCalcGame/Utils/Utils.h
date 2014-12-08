//
//  Utils.h
//  TheCalcGame
//
//  Created by Neo on 8/12/14.
//  Copyright (c) 2014 Neo He. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MT_Rand.h"

@interface Utils : NSObject

+ (int) randomIntFrom:(int)min to:(int)max;
+ (BOOL) randomBool;

@end
