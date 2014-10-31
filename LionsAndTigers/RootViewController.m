//
//  RootViewController.m
//  LionsAndTigers
//
//  Created by Jonathan Kim on 10/30/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import "RootViewController.h"
#import "PhotosViewController.h"
#import "MenuViewController.h"

@interface RootViewController () <PhotoViewDelegate, HUDDelegate>

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *leftConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *rightContraint;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MenuViewController *mvc = self.childViewControllers[1];
    mvc.delegate = self;

    UINavigationController *nvc = self.childViewControllers[0];
    PhotosViewController *pvc = (PhotosViewController *)nvc.topViewController;
    pvc.delegate = self;

-(void)topRevealButtonTapped
{

}




@end
