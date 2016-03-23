//
//  ViewController.m
//  HallOfFrame
//
//  Created by Kyle on 3/23/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;

}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}



@end
