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
#import "TypeGameNameViewController.h"

@implementation GameController

+ (GameController *)sharedInstance {
    static GameController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[GameController alloc] init];
        
    });
    return sharedInstance;
}

- (void)loadGames:(void (^)(BOOL success))completion
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

}

- (void)createNewGame:(Game *)game completion:(void (^)(BOOL success))completion {
    
    if (!game) {
        return;
    }
    
    [game saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        completion(succeeded);
    }];
    
//    NSMutableArray *mutableGames = [[NSMutableArray alloc] initWithArray:self.games];
//    [mutableGames addObject:game];
//    
//    self.games = mutableGames;
}

@end
