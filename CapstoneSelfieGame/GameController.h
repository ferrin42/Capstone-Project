//
//  GameController.h
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/14/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"

@import ParseUI;
@import Parse;

@interface GameController : NSObject

@property (nonatomic,strong) NSArray * games;

+ (GameController *)sharedInstance;

-(void)loadGames:(void (^)(BOOL success))completion;
//- (void)createNewGame:(Game *)game;

@end
