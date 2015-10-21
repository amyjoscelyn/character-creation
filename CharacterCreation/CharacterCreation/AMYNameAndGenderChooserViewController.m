//
//  AMYNameAndGenderChooserViewController.m
//  CharacterCreation
//
//  Created by Amy Joscelyn on 10/21/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYNameAndGenderChooserViewController.h"
#import "AMYCharacterCreated.h"

@interface AMYNameAndGenderChooserViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UISwitch *isFemaleSwitch;

@property (nonatomic, strong) AMYCharacterCreated *character;

@end

@implementation AMYNameAndGenderChooserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)readyButtonTapped:(id)sender
{
    self.character.name = self.nameTextField.text;
    self.character.genderIsFemale = self.isFemaleSwitch;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // If gender is MALE, send it to male picture view.  If gender is FEMALE, send the female picture view.
}

@end
