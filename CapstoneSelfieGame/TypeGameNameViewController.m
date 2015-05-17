//
//  TypeGameNameViewController.m
//  CapstoneSelfieGame
//
//  Created by Jake Ferrin on 5/13/15.
//  Copyright (c) 2015 Jake Ferrin. All rights reserved.
//

#import "TypeGameNameViewController.h"

@interface TypeGameNameViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *gameNameTextField;

@end

@implementation TypeGameNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gameNameTextField.delegate = self;
    [self.gameNameTextField becomeFirstResponder];
    
//    self.gameNameTextField.text = Game Name Property;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
