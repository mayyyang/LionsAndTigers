//
//  MenuViewController.m
//  LionsAndTigers
//
//  Created by Jonathan Kim on 11/1/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (IBAction)onTigersButtonPressed:(UIButton *)sender
{
    [self.delegate tigersButtonTapped];
}

- (IBAction)onLionsMenuPressed:(UIButton *)sender
{
    [self.delegate lionsButtonTapped];
}



@end
