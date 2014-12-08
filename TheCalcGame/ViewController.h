//
//  ViewController.h
//  TheCalcGame
//
//  Created by Neo on 7/12/14.
//  Copyright (c) 2014 Neo He. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "GameController.h"

@interface ViewController : UIViewController {
	GameController *gameCtrl;
	
	IBOutlet UILabel *label;
	IBOutlet UIProgressView *progressView;
}

- (IBAction)pressTrueBtn:(id)sender;
- (IBAction)pressFalseBtn:(id)sender;


@end

