//
//  ViewController.h
//  WhackAZombie
//
//  Created by Joshua Eaton on 10/23/13.
//  Copyright (c) 2013 Apperture. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Zombie;
@class ImprovedZombie;

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *zombieNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *zombieStrengthLabel;
@property (weak, nonatomic) IBOutlet UILabel *zombieHealthLabel;

@property (nonatomic, retain) ImprovedZombie *myCoolZombie;
- (IBAction)showMeTheZombieButtonTapped:(id)sender;

@end
