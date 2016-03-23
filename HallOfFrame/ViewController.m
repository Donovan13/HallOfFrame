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
#import "CustomView.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate,PictureCollectionViewCellDelegate>
@property NSMutableArray *animalImages;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.animalImages = [[NSMutableArray alloc]init];
    
    Picture *animal1 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"animal1"] andColor:[UIColor redColor]];
    Picture *animal2 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"animal2"] andColor:[UIColor redColor]];
    Picture *animal3 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"animal3"] andColor:[UIColor redColor]];
    Picture *animal4 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"animal4"] andColor:[UIColor redColor]];
    Picture *animal5 = [[Picture alloc]initWithImage:[UIImage imageNamed:@"animal5"] andColor:[UIColor redColor]];
    
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

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
//    PictureCollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    CustomView *view = [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];
    view.delegate = self;
//    CGPoint superCenter = CGPointMake(CGRectGetMidX([cell bounds]), CGRectGetMidY([cell bounds]));
//    [cell setCenter:superCenter];
    [self.view addSubview:view];
    
}

-(void)pictureCollectionViewCell:(CustomView *)cell didTapButton:(UIButton *)button {
    
}


@end
