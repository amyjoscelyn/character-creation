//
//  AMYNameAndGenderChooserViewController.m
//  CharacterCreation
//
//  Created by Amy Joscelyn on 10/21/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYNameAndGenderChooserViewController.h"
#import "AMYCharacterImageViewController.h"
#import "AMYCharacterCreated.h"

@interface AMYNameAndGenderChooserViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *genderSegmentedControl;

@property (nonatomic, strong) AMYCharacterCreated *sharedCharacter;

@end

@implementation AMYNameAndGenderChooserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)viewTapped:(id)sender
{
    [self.view endEditing:YES];
}

//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    [self.nameTextField resignFirstResponder];
//}

- (IBAction)readyButtonTapped:(id)sender
{
    self.sharedCharacter = [AMYCharacterCreated sharedCharacter];

    self.sharedCharacter.name = self.nameTextField.text;
    
    BOOL nameIsValid = [self validName];
    if (!nameIsValid)
    {
        return;
    }
    NSUInteger genderIndex = self.genderSegmentedControl.selectedSegmentIndex;
    
    if (genderIndex == 0)
    {
        self.sharedCharacter.male = YES;
        self.sharedCharacter.female = NO;
    }
    else
    {
        self.sharedCharacter.male = NO;
        self.sharedCharacter.female = YES;
    }
    [self performSegueWithIdentifier:@"readyToChooseAnAvatarSegue" sender:nil];
}

- (BOOL)validName
{
    NSString *name = self.sharedCharacter.name;
    if (name.length == 0)
    {
        NSLog(@"Please enter a name.");
        return NO;
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    AMYCharacterImageViewController *characterImageDVC = segue.destinationViewController;

    if (self.sharedCharacter.female)
    {
        characterImageDVC.femaleSet = YES;
        characterImageDVC.maleSet = NO;
    }
    else
    {
        characterImageDVC.femaleSet = NO;
        characterImageDVC.maleSet = YES;
    }
}

@end
