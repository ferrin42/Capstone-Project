//
//  Game.h
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/14/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import <Parse/Parse.h>

@class Photo;

@interface Game : PFObject <PFSubclassing>

@property (nonatomic, strong) NSString *gameName;
@property (nonatomic, strong) NSString *gameCreator;
@property (nonatomic, strong) NSDate *gameTimer;
@property (nonatomic, strong) NSArray *gameParticipants;

+ (NSString *)parseClassName;

@end
