//
//  Picture.m
//  HallOfFrame
//
//  Created by Kyle on 3/23/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "Picture.h"

@implementation Picture

-(instancetype) initWithImage:(UIImage *)image andColor:(UIColor *)color {
    self = [super init];
    if(self) {
        self.image = image;
        self.frameColor = color;
    }
    return self;
}


@end
