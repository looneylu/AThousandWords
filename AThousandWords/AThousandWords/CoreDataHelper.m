//
//  CoreDataHelper.m
//  AThousandWords
//
//  Created by Luis Carbuccia on 8/3/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "CoreDataHelper.h"

@implementation CoreDataHelper



+ (NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context = nil;
    
    id delegate = [[UIApplication sharedApplication] delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)])
    {
        context = [delegate managedObjectContext];
    }
    
    return context;
}


@end
