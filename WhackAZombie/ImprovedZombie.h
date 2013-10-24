//
//  ImprovedZombie.h
//  WhackAZombie
//
//  Created by Joshua Eaton on 10/23/13.
//  Copyright (c) 2013 Apperture. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImprovedZombie : NSObject

+(NSString *)favoriteFood;

// Class initalizer
-(id)initWithName:(NSString *)newName hitsUntilDead:(NSUInteger)newHitsUntilDead;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) uint hitsUntilDead;
@property (nonatomic, assign) uint remainingHitsUntilDead;
@property (nonatomic, assign) double money;


@end
