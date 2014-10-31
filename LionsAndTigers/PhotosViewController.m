//
//  PhotosViewController.m
//  LionsAndTigers
//
//  Created by Jonathan Kim on 10/30/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import "PhotosViewController.h"

@interface PhotosViewController ()

@property (strong, nonatomic) IBOutlet UIBarButtonItem *itemBarButton;

@end

@implementation PhotosViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}


- (IBAction)topRevealButtonTapped:(UIBarButtonItem *)sender
{
    [self.delegate topRevealButtonTapped];
}



@end
