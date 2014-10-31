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
    [self.delegate isTigerButtonTapped];
}

- (IBAction)tigerButtonTapped:(UIButton *)sender
{
    [self.delegate isTigerButtonTapped];
}



@end
