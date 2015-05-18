//
//  Photo.h
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/14/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import <Parse/Parse.h>
#import "Game.h"

@interface Photo : PFObject <PFSubclassing>

@property (nonatomic, strong) PFFile *photoFileObject;
@property (nonatomic, strong) Game *photoGame;
@property (nonatomic, strong) PFUser *photoUser;

+ (NSString *)parseClassName;

@end
