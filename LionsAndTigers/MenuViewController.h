//
//  MenuViewController.h
//  LionsAndTigers
//
//  Created by Jonathan Kim on 10/30/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>

-(BOOL)isTigerButtonTapped;

@end

@interface MenuViewController : UIViewController

@property (nonatomic, weak) id <HUDDelegate> delegate;

-(void)tigerButtonTapped:(UIButton *)sender;

-(void)lionButtonTapped:(UIButton *)sender;

@end
