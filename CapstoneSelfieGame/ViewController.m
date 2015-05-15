//
//  ViewController.m
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/13/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import "ViewController.h"
#import "GamesListTableViewDataSource.h"
#import "GameDetailViewController.h"
#import <Parse/Parse.h>

static NSString * const rowSelectedSegue = @"rowSelected";

@interface ViewController () <UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *gamesTableView;
@property (nonatomic, strong) GamesListTableViewDataSource *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"Rabbits"] = @"Key lime pie";
    [testObject saveInBackground];
    
    self.title = @"Home";
    
    self.dataSource = [GamesListTableViewDataSource new];
    
    self.gamesTableView.dataSource = self.dataSource;
    self.gamesTableView.delegate = self;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:rowSelectedSegue]) {
//        UITableViewCell *cell = sender;
//        NSIndexPath *indexPath = [self.gamesTableView indexPathForCell:cell];
        //Get game from controller with index path
//        GameDetailViewController *detailViewController = segue.destinationViewController;
//        detailViewController. Use Game object
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
