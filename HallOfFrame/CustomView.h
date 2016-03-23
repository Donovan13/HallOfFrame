//
//  CustomView.h
//  HallOfFrame
//
//  Created by Kyle on 3/23/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomView;

@protocol PictureCollectionViewCellDelegate <NSObject>

- (void)pictureCollectionViewCell:(CustomView *)cell didTapButton:(UIButton *)button;

@end

@interface CustomView : UIView

@property (nonatomic,assign) id<PictureCollectionViewCellDelegate>delegate;

@end
