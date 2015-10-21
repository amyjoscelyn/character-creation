//
//  AMYCharacterDataStore.h
//  CharacterCreation
//
//  Created by Amy Joscelyn on 10/21/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AMYCharacterCreated.h"

@interface AMYCharacterDataStore : NSObject

@property (nonatomic, strong) AMYCharacterCreated *character;

+ (instancetype)sharedCharacterDataStore;

@end
