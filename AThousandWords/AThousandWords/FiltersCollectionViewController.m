//
//  FiltersCollectionViewController.m
//  AThousandWords
//
//  Created by Luis Carbuccia on 8/7/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "FiltersCollectionViewController.h"
#import "PhotoCollectionViewCell.h"

@interface FiltersCollectionViewController ()

@property (strong, nonatomic) NSMutableArray *filters;

@end

@implementation FiltersCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - Lazy Instantiation

-(NSMutableArray *) filters
{
    if (!_filters)
        _filters = [[NSMutableArray alloc] init];
    
    return _filters;
}

#pragma mark - UICollectionViewDataSource
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"PhotoCell";
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor whiteColor];
    cell.imageView.image = self.photo.image;
    
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.filters count];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
