//
//  TypeGameNameViewController.m
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/13/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import "TypeGameNameViewController.h"
#import "Game.h"
#import "GameController.h"
#import "PhotoViewController.h"

@interface TypeGameNameViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UIButton *takePhotoButton;
@property (strong, nonatomic) Game *createdGame;

@end

@implementation TypeGameNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gameNameTextField.delegate = self;
    [self.gameNameTextField becomeFirstResponder];
    
//    self.gameNameTextField.text = Game Name Property;
    
}

- (IBAction)takePhotoButtonTapped:(id)sender {
    
    Game *newGame = [Game new];
    newGame.gameName = self.gameNameTextField.text;
    newGame.gameCreator = [PFUser currentUser].email;
    
    [[GameController sharedInstance] createNewGame:newGame completion:^(BOOL succeeded) {
        if (succeeded) {
            // present next view controller
            self.createdGame = newGame;
            [self performSegueWithIdentifier:@"Photo" sender:nil];
        } else {
            // present error to user
        }
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Photo"]) {
        PhotoViewController *photoController = (PhotoViewController *)segue.destinationViewController;
        photoController.game = self.createdGame;
    }
}


@end
