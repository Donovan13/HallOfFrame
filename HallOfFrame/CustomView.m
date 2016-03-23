//
//  CustomView.m
//  HallOfFrame
//
//  Created by Kyle on 3/23/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (IBAction)onButtonTapped:(UIButton *)sender {
    [self.delegate pictureCollectionViewCell:self didTapButton:sender];
}


@end
