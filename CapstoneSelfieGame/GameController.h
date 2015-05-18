//
//  GameController.h
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/14/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import <Foundation/Foundation.h>
@import ParseUI;
@import Parse;

@interface GameController : NSObject

+ (GameController *)sharedInstance;

@property (nonatomic,strong) NSArray * games;
-(void)loadGames:(void (^)(BOOL success))completion;

@end
