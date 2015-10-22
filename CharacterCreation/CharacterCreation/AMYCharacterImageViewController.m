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

@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
@property (weak, nonatomic) IBOutlet UIButton *buttonThree;
@property (weak, nonatomic) IBOutlet UIButton *buttonFour;
@property (weak, nonatomic) IBOutlet UIButton *buttonFive;
@property (weak, nonatomic) IBOutlet UIButton *buttonSix;

@property (strong, nonatomic) NSArray *arrayOfButtons;
@property (strong, nonatomic) NSArray *arrayOfImages;

@end

@implementation AMYCharacterImageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.arrayOfButtons = @[ self.buttonOne, self.buttonTwo, self.buttonThree, self.buttonFour, self.buttonFive, self.buttonSix ];
    
    self.arrayOfImages = @[ self.imageOneView, self.imageTwoView, self.imageThreeView, self.imageFourView, self.imageFiveView, self.imageSixView ];
    
    if (self.femaleSet)
    {
        UIImage *firstPhoto = [UIImage imageNamed:@"WomNum1"];
        self.imageOneView.image = firstPhoto;
        
        UIImage *secondPhoto = [UIImage imageNamed:@"WomNum2"];
        self.imageTwoView.image = secondPhoto;
        
        UIImage *thirdPhoto = [UIImage imageNamed:@"WomNum3"];
        self.imageThreeView.image = thirdPhoto;
        
        UIImage *fourthPhoto = [UIImage imageNamed:@"WomNum4"];
        self.imageFourView.image = fourthPhoto;
        
        UIImage *fifthPhoto = [UIImage imageNamed:@"WomNum5"];
        self.imageFiveView.image = fifthPhoto;
        
        UIImage *sixthPhoto = [UIImage imageNamed:@"WomNum6"];
        self.imageSixView.image = sixthPhoto;
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

- (IBAction)pictureOneButtonTapped:(id)sender {
}
- (IBAction)pictureTwoButtonTapped:(id)sender {
}
- (IBAction)pictureThreeButtonTapped:(id)sender {
}
- (IBAction)pictureFourButtonTapped:(id)sender {
}
- (IBAction)pictureFiveButtonTapped:(id)sender {
}
- (IBAction)pictureSixButtonTapped:(id)sender {
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSInteger indexOfButton = 0;
    
    for (NSInteger i = 0; i < self.arrayOfButtons.count; i++)
    {
        UIButton *currentButton = self.arrayOfButtons[i];
        
        if ([currentButton isEqual:sender])
        {
            indexOfButton = i;
        }
    }
    UIImageView *currentImageView = self.arrayOfImages[indexOfButton];
    UIImage *imageToPassForward = currentImageView.image;
    
    AMYCharacterSoFarViewController *charSoFarDVC = segue.destinationViewController;
    charSoFarDVC.characterImage = imageToPassForward;
}

@end
