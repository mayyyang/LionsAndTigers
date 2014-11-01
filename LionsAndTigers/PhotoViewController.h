//
//  PhotoViewController.h
//  LionsAndTigers
//
//  Created by Jonathan Kim on 11/1/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PhotoVCDelegate <NSObject>

- (void)menuButtonTapped;

@end

@interface PhotoViewController : UIViewController

@property (weak) id <PhotoVCDelegate> delegate;

-(void)showTigerImages;
-(void)showLionImages;

@end
