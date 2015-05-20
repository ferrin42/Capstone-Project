//
//  Participant.h
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/19/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import <Parse/Parse.h>

@class Game;

@interface Participant : PFObject <PFSubclassing>

@property (nonatomic, strong) PFFile *participantPhoto;
@property (nonatomic, strong) PFUser *participantUser;
@property (nonatomic, strong) Game *participantGame;

+ (NSString *)parseClassName;

@end
