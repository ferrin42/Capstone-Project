//
//  GameController.m
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/14/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import "GameController.h"
#import "Game.h"
#import "Participant.h"

@implementation GameController

+ (GameController *)sharedInstance {
    static GameController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[GameController alloc] init];
        
    });
    return sharedInstance;
}

-(void)loadGames:(void (^)(BOOL success))completion
{
    PFQuery *query = [Participant query];
//    PFACL *acl = [PFACL ACLWithUser:[PFUser currentUser]]; to use everytime you save a record
    [query whereKey:@"participantUser" equalTo:[PFUser currentUser]];
    [query includeKey:@"participantGame"];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        NSMutableArray * arrayToPullGames = [NSMutableArray new];
        
        for (Participant *participant in objects) {
            [arrayToPullGames addObject:participant.participantGame];
        }
        
        [GameController sharedInstance].games = [[NSArray alloc]initWithArray:arrayToPullGames];
        completion(YES);
        
    }];

//    this shouldnt go here
//    Game *game = [Game new];
//    [[GameController sharedInstance]saveGame:game withName:@"newGame"];
}

-(void)saveGame:(Game *)game withName:(NSString *)name
{
    NSDate *date = [NSDate date];
    
    
    game.gameName = name;
    game.gameTimer = date;
//    game.gameParticipants = this should be an array of PFUsers in the game
    
    [game saveInBackground];
}

@end
