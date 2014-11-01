//
//  RootViewController.m
//  LionsAndTigers
//
//  Created by Jonathan Kim on 11/1/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import "RootViewController.h"
#import "PhotoViewController.h"
#import "MenuViewController.h"

@interface RootViewController () <PhotoVCDelegate, MenuVCDelegate>

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *photoVCLeadingConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *photoVCTrailingConstraint;

@property PhotoViewController *photoVC;
@property MenuViewController *menuVC;


@property (nonatomic)  BOOL isOpen;

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(BOOL)isOpen
{
    BOOL result = self.photoVCLeadingConstraint.constant != -16;
    return result;
}


#pragma mark - PhotoVCDelegate

-(void)menuButtonTapped
{
    if (!self.isOpen) {
        [self.photoVCLeadingConstraint setConstant: self.view.bounds.size.width * 0.7];
        [self.photoVCTrailingConstraint setConstant:-self.view.bounds.size.width * 0.7];
    }
    else
    {
        [self.photoVCLeadingConstraint setConstant: -16];
        [self.photoVCTrailingConstraint setConstant: -16];
    }

    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"photoSegue"]) {
        UINavigationController *navigationVC = segue.destinationViewController;
        self.photoVC = navigationVC.childViewControllers[0];
        self.photoVC.delegate = self;
    }
    else if ([segue.identifier isEqualToString:@"menuSegue"])
    {
        self.menuVC = segue.destinationViewController;
        self.menuVC.delegate = self;
    }
}

-(void)lionsButtonTapped
{
    [self.photoVC showLionImages];
}

-(void)tigersButtonTapped
{
    [self.photoVC showTigerImages];
}

@end
