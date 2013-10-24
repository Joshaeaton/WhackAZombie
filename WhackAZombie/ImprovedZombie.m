//
//  ImprovedZombie.m
//  WhackAZombie
//
//  Created by Joshua Eaton on 10/23/13.
//  Copyright (c) 2013 Apperture. All rights reserved.
//

#import "ImprovedZombie.h"

@implementation ImprovedZombie

+(NSString *)favoriteFood {
    // This is a class method becuase a zombie's favorite food is always the same no matter which zombie... brains.
    return @"brains";
}

// Class initalizer
-(id)initWithName:(NSString *)newName hitsUntilDead:(NSUInteger)newHitsUntilDead {
    self = [super init];
    if (self != nil) {
        self.name = newName;
        self.hitsUntilDead = newHitsUntilDead;
    }
    
    return self;
}



@end
