//
//  AMYCharacterImageViewController.m
//  CharacterCreation
//
//  Created by Amy Joscelyn on 10/21/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYCharacterImageViewController.h"

@interface AMYCharacterImageViewController ()

@property (weak, nonatomic) IBOutlet UIButton *pictureOneButton;
@property (weak, nonatomic) IBOutlet UIButton *pictureTwoButton;
@property (weak, nonatomic) IBOutlet UIButton *pictureThreeButton;
@property (weak, nonatomic) IBOutlet UIButton *pictureFourButton;
@property (weak, nonatomic) IBOutlet UIButton *pictureFiveButton;
@property (weak, nonatomic) IBOutlet UIButton *pictureSixButton;

@end

@implementation AMYCharacterImageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (IBAction)pictureOneButtonTapped:(id)sender
{
}

- (IBAction)pictureTwoButtonTapped:(id)sender
{
}

- (IBAction)pictureThreeButtonTapped:(id)sender
{
}

- (IBAction)pictureFourButtonTapped:(id)sender
{
}

- (IBAction)pictureFiveButtonTapped:(id)sender
{
}

- (IBAction)pictureSixButtonTapped:(id)sender
{
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    AMYCharacterSoFarViewController *charSoFarDVC = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"pictureOneSegue"])
    {
        // characterimage = picture 1
        charSoFarDVC.characterImageView.image = self.pictureOneButton.currentImage;
        //this doesn't work quite like i expect...
        //should i add the image view to the character stored data as well?
    }
    else if ([segue.identifier isEqualToString:@"pictureTwoSegue"])
    {
        // character image = pic 2
    }
    else if ([segue.identifier isEqualToString:@"pictureThreeSegue"])
    {
        // pic 3
    }
    else if ([segue.identifier isEqualToString:@"pictureFourSegue"])
    {
        // pic 4
    }
    else if ([segue.identifier isEqualToString:@"pictureFiveSegue"])
    {
        // 5
    }
    else
    {
        //6
    }
    
}

@end
