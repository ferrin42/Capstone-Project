//
//  GamesListTableViewDataSource.m
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/13/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import "GamesListTableViewDataSource.h"

static NSString * const gameCellIdentifier = @"cell";

@implementation GamesListTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:gameCellIdentifier];
    
    cell.textLabel.text = @"Games";
    
    return cell;
}

@end
