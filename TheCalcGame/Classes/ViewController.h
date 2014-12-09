//
//  ViewController.h
//  TheCalcGame
//
//  Created by Neo on 7/12/14.
//  Copyright (c) 2014 Neo He. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "../Utils/Utils.h"

#import "Mediator.h"

@interface ViewController : UIViewController {
	Mediator *mediator;

    IBOutlet UILabel * __weak scoreLabel;
    IBOutlet UILabel * __weak equationLabel;
	IBOutlet UIProgressView * __weak progressView;
}

@property (weak, readonly) UILabel *scoreLabel;
@property (weak, readonly) UILabel *equationLabel;
@property (weak, readonly) UIProgressView *progressView;

- (IBAction)pressTrueBtn:(id)sender;
- (IBAction)pressFalseBtn:(id)sender;


@end

