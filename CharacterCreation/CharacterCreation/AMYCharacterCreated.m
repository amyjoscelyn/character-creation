//
//  AMYCharacterCreated.m
//  CharacterCreation
//
//  Created by Amy Joscelyn on 10/21/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYCharacterCreated.h"

@implementation AMYCharacterCreated
+ (instancetype)sharedCharacter {
    static AMYCharacterCreated *_sharedCharacter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedCharacter = [[AMYCharacterCreated alloc] init];
    });
    return _sharedCharacter;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"";
        _female = YES;
        _male = NO;
    }
    return self;
}



@end
