//
//  AMYCharacterDataStore.m
//  CharacterCreation
//
//  Created by Amy Joscelyn on 10/21/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYCharacterDataStore.h"

@implementation AMYCharacterDataStore

+ (instancetype)sharedCharacterDataStore
{
    static AMYCharacterDataStore *_sharedCharacterDataStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedCharacterDataStore = [[AMYCharacterDataStore alloc] init];
    });
    return _sharedCharacterDataStore;
}

@end
