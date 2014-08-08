//
//  PhotoDetailViewController.m
//  AThousandWords
//
//  Created by Luis Carbuccia on 8/7/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "PhotoDetailViewController.h"
#import "FiltersCollectionViewController.h"


@interface PhotoDetailViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation PhotoDetailViewController

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

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.imageView.image = self.photo.image;
}

#pragma mark - IBActions

- (IBAction)addFilterButtonPressed:(UIButton *)sender
{
    
}

- (IBAction)deleteButtonPressed:(UIButton *)sender
{
    [[self.photo managedObjectContext] deleteObject:self.photo];
    
    NSError *error = nil;
    [[self.photo managedObjectContext] save:&error];
    
    if (error)
        NSLog(@"Error");
    
    [self.navigationController popViewControllerAnimated:YES];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"toFilters"])
    {
        if ([segue.destinationViewController isKindOfClass:[FiltersCollectionViewController class]])
        {
            FiltersCollectionViewController *filtersCollectionVC = segue.destinationViewController;
            filtersCollectionVC.photo = self.photo;
        }
    }
}


@end
