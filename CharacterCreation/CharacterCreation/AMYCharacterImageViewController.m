//
//  AMYCharacterImageViewController.m
//  CharacterCreation
//
//  Created by Amy Joscelyn on 10/21/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYCharacterImageViewController.h"

@interface AMYCharacterImageViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageOneView;
@property (weak, nonatomic) IBOutlet UIImageView *imageTwoView;
@property (weak, nonatomic) IBOutlet UIImageView *imageThreeView;
@property (weak, nonatomic) IBOutlet UIImageView *imageFourView;
@property (weak, nonatomic) IBOutlet UIImageView *imageFiveView;
@property (weak, nonatomic) IBOutlet UIImageView *imageSixView;

@end

@implementation AMYCharacterImageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (self.femaleSet)
    {
        UIImage *firstPhoto = [UIImage imageNamed:@"WomNum1"];
        self.imageOneView.image = firstPhoto;
    }
    else
    {
        UIImage *firstPhoto = [UIImage imageNamed:@"ManNum1"];
        self.imageOneView.image = firstPhoto;
        
        UIImage *secondPhoto = [UIImage imageNamed:@"ManNum2"];
        self.imageTwoView.image = secondPhoto;
        
        UIImage *thirdPhoto = [UIImage imageNamed:@"ManNum3"];
        self.imageThreeView.image = thirdPhoto;
        
        UIImage *fourthPhoto = [UIImage imageNamed:@"ManNum4"];
        self.imageFourView.image = fourthPhoto;
        
        UIImage *fifthPhoto = [UIImage imageNamed:@"ManNum5"];
        self.imageFiveView.image = fifthPhoto;
        
        UIImage *sixthPhoto = [UIImage imageNamed:@"ManNum6"];
        self.imageSixView.image = sixthPhoto;
    }
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
//    AMYCharacterSoFarViewController *charSoFarDVC = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"pictureOneSegue"])
    {
        // characterimage = picture 1
//        charSoFarDVC.characterImageView.image = self.pictureOneButton.currentImage; even though it's imageView now
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
