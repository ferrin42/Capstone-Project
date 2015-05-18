//
//  Vote.h
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/18/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import <Parse/Parse.h>
#import "Photo.h"

@interface Vote : PFObject <PFSubclassing>

@property (nonatomic, strong) Photo *votePhoto;

+ (NSString *)parseClassName;

@end
