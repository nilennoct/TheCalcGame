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

- (IBAction)pressTrueBtn:(id)sender {
	[gameCtrl startTimer];
	label.text = [NSString stringWithFormat:@"%d", [Utils randomIntFrom:0 to:9]];
}

- (IBAction)pressFalseBtn:(id)sender {
	[gameCtrl startTimer];
	label.text = [NSString stringWithFormat:@"%d", [Utils randomIntFrom:10 to:99]];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	gameCtrl = [[GameController alloc] initWithProgressView:progressView];
	[gameCtrl startTimer];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
