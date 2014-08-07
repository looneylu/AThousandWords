//
//  CollectionViewController.h
//  AThousandWords
//
//  Created by Luis Carbuccia on 8/4/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Album.h"

@interface CollectionViewController : UICollectionViewController

@property (strong, nonatomic) Album *album;

@end
