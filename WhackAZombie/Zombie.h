//
//  Zombie.h
//  WhackAZombie
//
//  Created by Brad Eaton on 10/22/13.
//  Copyright (c) 2013 Brad Eaton. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Zombie : NSObject {
    // These are insetance variables
    
    // What is this zombie's name?
    NSString *name;
    
    // How strong is this zombie?  How many times does it have to be hit until it's dead?
    NSUInteger hitsUntilDead;
    
    // Remaining strength
    NSUInteger remainingHitsUntilDead;
    
    // How much money does this zombie have?
    double money;
    
}

// See that little plus sign in front of this method? That means this is a class method.
// It's invoked using the class name, not the instance variable e.g. [Zombie favoriteFood];
// It can't access those instance variables above.  But, it could define it's own variables that would only be around for the duration / scpope of this method.
+(NSString *)favoriteFood;

// See that little minus sign in front of each of these methods? These are instance methods.  They *can* access the instance variables above and
// there will be a separate copy of those variables for every instance of this Zombie class.  These are invoked from the instance variable.
// e.g.
// Zombie *zombieDude1 = [[Zombie alloc] initWithName:@"Steve" hitsUntilDead:4];
// [zombieDude1 setMoney:50.00];
//
// Class initalizer
-(id)initWithName:(NSString *)newName hitsUntilDead:(NSUInteger)newHitsUntilDead;

// Accessor methods for getting and setting the zombie's name.
-(NSString *)name;
-(void)setName:(NSString *)newName;

// Accessor methods for getting and setting the number of hits the zombie takes to die.
-(NSUInteger)hitsUntilDead;
-(void)setHitsUntilDead:(NSUInteger)newHitsUntilDead;

// Accessor methods for getting and setting how much money the zombie has in its pocket
-(double)money;
-(void)setMoney:(double)newMoney;


@end
