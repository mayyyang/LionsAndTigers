//
//  PhotoViewController.m
//  LionsAndTigers
//
//  Created by Jonathan Kim on 11/1/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import "PhotoViewController.h"
#import "CustomCollectionViewCell.h"

@interface PhotoViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property NSMutableArray *currentImagesArray;
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation PhotoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.currentImagesArray = [@[] mutableCopy];

    [self.currentImagesArray addObjectsFromArray: @[[UIImage imageNamed:@"tiger"],
                                                    [UIImage imageNamed:@"tiger2"],
                                                    [UIImage imageNamed:@"tiger3"]]];
}

- (IBAction)onMenuButtonPressed:(UIBarButtonItem *)sender
{
    [self.delegate menuButtonTapped];
}

-(void)showTigerImages
{
    self.currentImagesArray = [@[] mutableCopy];
    [self.currentImagesArray addObjectsFromArray: @[[UIImage imageNamed:@"tiger"],
                                                    [UIImage imageNamed:@"tiger2"],
                                                    [UIImage imageNamed:@"tiger3"]]];
    [self.collectionView reloadData];
    [self.delegate menuButtonTapped];
}

-(void)showLionImages
{
    self.currentImagesArray = [@[] mutableCopy];
    [self.currentImagesArray addObjectsFromArray: @[[UIImage imageNamed:@"lion"],
                                                    [UIImage imageNamed:@"lion2"],
                                                    [UIImage imageNamed:@"lion3"]]];
    [self.collectionView reloadData];
    [self.delegate menuButtonTapped];
}

#pragma mark - UICollectionView Delegates

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.currentImagesArray.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.pictureView.image = self.currentImagesArray[indexPath.item];

    return cell;
}

@end
