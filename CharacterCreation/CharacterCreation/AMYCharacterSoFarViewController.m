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

@property (nonatomic, strong) AMYCharacterCreated *sharedCharacter;

@end

@implementation AMYCharacterSoFarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.characterImageView.image = self.characterImage;
    
    self.sharedCharacter = [AMYCharacterCreated sharedCharacter];
    
    self.characterNameLabel.text = self.sharedCharacter.name;
    // self.characterNameLabel.text = name of the character we created earlier
    // picture is equal to the one that was under the button that sent us over here
}

@end
