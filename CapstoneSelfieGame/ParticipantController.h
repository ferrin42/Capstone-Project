//
//  ParticipantController.h
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/19/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ParticipantController : NSObject

@property (nonatomic, strong) NSArray *participants;

+ (ParticipantController *)sharedInstance;

@end