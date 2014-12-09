//
//  ViewController.m
//  TheCalcGame
//
//  Created by Neo on 7/12/14.
//  Copyright (c) 2014 Neo He. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize scoreLabel;
@synthesize equationLabel;
@synthesize progressView;

- (IBAction)pressTrueBtn:(id)sender {
    [mediator startGame];
	self.equationLabel.text = [NSString stringWithFormat:@"%d", [Utils randomIntFrom:0 to:9]];
}

- (IBAction)pressFalseBtn:(id)sender {
    self.equationLabel.text = [NSString stringWithFormat:@"%d", [Utils randomIntFrom:10 to:99]];
}

- (ViewController *)init {
    if (self = [super init]) {
        mediator = [Mediator getInstance];
        mediator.viewCtrl = self;
    }

    return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [mediator startGame];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
