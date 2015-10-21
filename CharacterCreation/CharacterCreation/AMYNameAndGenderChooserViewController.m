//
//  AMYNameAndGenderChooserViewController.m
//  CharacterCreation
//
//  Created by Amy Joscelyn on 10/21/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYNameAndGenderChooserViewController.h"
#import "AMYCharacterImageViewController.h"

@interface AMYNameAndGenderChooserViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UISwitch *isFemaleSwitch;

@property (nonatomic, strong) AMYCharacterDataStore *sharedCharacter;

@end

@implementation AMYNameAndGenderChooserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)readyButtonTapped:(id)sender
{
    self.sharedCharacter = [AMYCharacterDataStore sharedCharacterDataStore];
    
    self.sharedCharacter.character.name = self.nameTextField.text;
    self.sharedCharacter.character.genderIsFemale = self.isFemaleSwitch;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    AMYCharacterImageViewController *characterImageDVC = segue.destinationViewController;
    if (self.sharedCharacter.character.genderIsFemale)
    {
        //send it to female pictures
    }
    else
    {
        // send it to male pictures
    }
    
//    characterImageDVC.

}

@end
