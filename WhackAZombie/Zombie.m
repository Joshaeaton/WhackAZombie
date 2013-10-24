//
//  Zombie.m
//  WhackAZombie
//
//  Created by Brad Eaton on 10/22/13.
//  Copyright (c) 2013 Brad Eaton. All rights reserved.
//

#import "Zombie.h"

@implementation Zombie

// See that little plus sign in front of this method? That means this is a class method.
// It's invoked using the class name, not the instance variable e.g. [Zombie favoriteFood];
// It can't access those instance variables above.  But, it could define it's own variables that would only be around for the duration / scpope of this method.
+(NSString *)favoriteFood {
    // This is a class method becuase a zombie's favorite food is always the same no matter which zombie... brains.
    return @"brains";
}

// See that little minus sign in front of each of these methods? These are instance methods.  They *can* access the instance variables above and
// there will be a separate copy of those variables for every instance of this Zombie class.  These are invoked from the instance variable.
// e.g.
// Zombie *zombieDude1 = [[Zombie alloc] initWithName:@"Steve" hitsUntilDead:4];
// [zombieDude1 setMoney:50.00];
//
// Class initalizer
-(id)initWithName:(NSString *)newName hitsUntilDead:(NSUInteger)newHitsUntilDead {
    self = [super init];
    if (self != nil) {
        name = newName;
        hitsUntilDead = newHitsUntilDead;
    }
    
    return self;
}

// Accessor methods for getting and setting the zombie's name.
-(NSString *)name {
    return name;
}

-(void)setName:(NSString *)newName {
    name = newName;
}

// Accessor methods for getting and setting the number of hits the zombie takes to die.
-(NSUInteger)hitsUntilDead {
    return hitsUntilDead;
}

-(void)setHitsUntilDead:(NSUInteger)newHitsUntilDead {
    hitsUntilDead = newHitsUntilDead;
}

// Accessor methods for getting and setting how much money the zombie has in its pocket
-(double)money {
    return money;
}

-(void)setMoney:(double)newMoney {
    money = newMoney;
}



@end
