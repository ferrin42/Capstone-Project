//
//  Photo.m
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/14/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import "Photo.h"
#import <Parse/PFObject+Subclass.h>

@implementation Photo

@dynamic photoFileObject;
@dynamic photoGame;
@dynamic photoUser;

+ (NSString *)parseClassName {

    return @"Photo";
}

+ (void)load {
    [self registerSubclass];
}

@end
