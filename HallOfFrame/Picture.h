//
//  Picture.h
//  HallOfFrame
//
//  Created by Kyle on 3/23/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Picture : NSObject

@property UIImage *image;
@property UIColor *frameColor;

-(instancetype) initWithImage:(UIImage *)image andColor:(UIColor *)color;

@end
