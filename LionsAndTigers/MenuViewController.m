//
//  MenuViewController.m
//  LionsAndTigers
//
//  Created by Jonathan Kim on 10/30/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()


@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)lionButtonTapped:(UIButton *)sender
{
    [self.delegate buttonTapped:NO];
}

- (IBAction)tigerButtonTapped:(UIButton *)sender
{
    [self.delegate buttonTapped:YES];
}



@end
