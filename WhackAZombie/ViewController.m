//
//  ViewController.m
//  WhackAZombie
//
//  Created by Joshua Eaton on 10/23/13.
//  Copyright (c) 2013 Apperture. All rights reserved.
//

#import "ViewController.h"
#import "Zombie.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *whatToFeedThem;

    
    whatToFeedThem = [Zombie favoriteFood];
    NSLog(@"food=%@",whatToFeedThem);
    
    Zombie *myCoolZombie;
    
    myCoolZombie = [[Zombie alloc] initWithName:@"Steve" hitsUntilDead:10];
    
    myCoolZombie = [[Zombie alloc] init];
    [myCoolZombie setName:@"Steve"];
    [myCoolZombie setHitsUntilDead:10];
    
    [myCoolZombie setHitsUntilDead:5];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
