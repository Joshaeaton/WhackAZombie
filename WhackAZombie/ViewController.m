//
//  ViewController.m
//  WhackAZombie
//
//  Created by Joshua Eaton on 10/23/13.
//  Copyright (c) 2013 Apperture. All rights reserved.
//

#import "ViewController.h"
//#import "Zombie.h"
#import "ImprovedZombie.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *whatToFeedThem;
    whatToFeedThem = [ImprovedZombie favoriteFood];
    NSLog(@"food=%@",whatToFeedThem);

    
    self.myCoolZombie = [[ImprovedZombie alloc] initWithName:@"Steve" hitsUntilDead:10];
    [self.myCoolZombie setRemainingHitsUntilDead:5];
    
    [self clearZombieInfo];
}

- (IBAction)showMeTheZombieButtonTapped:(id)sender {
    [self showZombieInfo];
}

-(void)showZombieInfo {
    self.zombieNameLabel.text = [self.myCoolZombie name];
    self.zombieStrengthLabel.text = [NSString stringWithFormat:@"%d",[self.myCoolZombie hitsUntilDead]];
    self.zombieHealthLabel.text = [NSString stringWithFormat:@"%d",[self.myCoolZombie remainingHitsUntilDead]];    
}

-(void)clearZombieInfo {
    self.zombieNameLabel.text = @"";
    self.zombieStrengthLabel.text = @"";
    self.zombieHealthLabel.text = @"";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
