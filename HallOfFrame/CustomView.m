//
//  CustomView.m
//  HallOfFrame
//
//  Created by Kyle on 3/23/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (IBAction)redButtonTapped:(UIButton *)sender {
    [self.delegate pictureCollectionViewCell:self didTapButton:sender];
}
- (IBAction)blueButtonTapped:(UIButton *)sender {
    [self.delegate pictureCollectionViewCell:self didTapButton:sender];
    
}
- (IBAction)greenButtonTapped:(UIButton *)sender {
    [self.delegate pictureCollectionViewCell:self didTapButton:sender];
}


@end
