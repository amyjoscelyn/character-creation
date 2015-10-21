//
//  AMYCharacterSoFarViewController.m
//  CharacterCreation
//
//  Created by Amy Joscelyn on 10/21/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYCharacterSoFarViewController.h"

@interface AMYCharacterSoFarViewController ()

@property (weak, nonatomic) IBOutlet UILabel *characterNameLabel;

@property (nonatomic, strong) AMYCharacterDataStore *sharedCharacter;

@end

@implementation AMYCharacterSoFarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.sharedCharacter = [AMYCharacterDataStore sharedCharacterDataStore];
    
    self.characterNameLabel.text = self.sharedCharacter.character.name;
    // self.characterNameLabel.text = name of the character we created earlier
    // picture is equal to the one that was on the button that sent us over here
}

@end
