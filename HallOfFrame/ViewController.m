//
//  ViewController.m
//  HallOfFrame
//
//  Created by Kyle on 3/23/16.
//  Copyright © 2016 Kyle. All rights reserved.
//

#import "ViewController.h"
#import "Picture.h"
#import "PictureCollectionViewCell.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property NSMutableArray *animalImages;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.animalImages = [[NSMutableArray alloc]init];
    
    Picture *animal1 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"animmal1"] andColor:[UIColor redColor]];
    Picture *animal2 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"animmal2"] andColor:[UIColor redColor]];
    Picture *animal3 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"animmal3"] andColor:[UIColor redColor]];
    Picture *animal4 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"animmal4"] andColor:[UIColor redColor]];
    Picture *animal5 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"animmal5"] andColor:[UIColor redColor]];
    
    [self.animalImages addObject:animal1];
    [self.animalImages addObject:animal2];
    [self.animalImages addObject:animal3];
    [self.animalImages addObject:animal4];
    [self.animalImages addObject:animal5];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.animalImages.count;

}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCollectionViewCell" forIndexPath:indexPath];
    Picture *picture = self.animalImages[indexPath.row];
    cell.animalImage.image = picture.image;
    return cell;
}



@end
