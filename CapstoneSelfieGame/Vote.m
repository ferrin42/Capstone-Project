//
//  Vote.m
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/18/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import "Vote.h"

@implementation Vote

@dynamic votePhoto;

+ (NSString *)parseClassName {
    return @"Vote";
}

+ (void)load {
    [self registerSubclass];
}

@end
