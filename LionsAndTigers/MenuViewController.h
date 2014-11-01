//
//  MenuViewController.h
//  LionsAndTigers
//
//  Created by Jonathan Kim on 11/1/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MenuVCDelegate <NSObject>

-(void)tigersButtonTapped;
-(void)lionsButtonTapped;

@end

@interface MenuViewController : UIViewController

@property (weak) id <MenuVCDelegate> delegate;

@end
