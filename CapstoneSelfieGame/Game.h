//
//  Game.h
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/14/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import <Parse/Parse.h>

@interface Game : PFObject <PFSubclassing>

@property (nonatomic, strong) NSString *gameName;
@property (nonatomic, strong) NSString *gameCreator;
@property (nonatomic, strong) NSNumber *gameTimer;

@end
