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
    
    self.sharedCharacter = [AMYCharacterCreated sharedCharacter];
    
    self.characterImageView.image = self.characterImage;
    self.characterNameLabel.text = self.sharedCharacter.name;
}

@end
