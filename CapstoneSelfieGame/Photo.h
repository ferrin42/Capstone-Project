//
//  Photo.h
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/14/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import <Parse/Parse.h>

@interface Photo : PFObject <PFSubclassing>

@property (nonatomic, strong) PFFile *photoFileObject;
@property (nonatomic, strong) NSString *photoGame;
@property (nonatomic, strong) NSString *photoParticipant;

+ (NSString *)parseClassName;

@end
