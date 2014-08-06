//
//  PhotoCollectionViewCell.m
//  AThousandWords
//
//  Created by Luis Carbuccia on 8/5/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "PhotoCollectionViewCell.h"

#define IMAGE_VIEW_BORDER_LENGTH 5

@implementation PhotoCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}

-(id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self setup];
    }
    
    return self; 
}

- (void) setup
{
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectInset(self.bounds, IMAGE_VIEW_BORDER_LENGTH, IMAGE_VIEW_BORDER_LENGTH)];
    [self.contentView addSubview:self.imageView];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
