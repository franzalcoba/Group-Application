//
//  GameViewController.m
//  Midnight
//
//  Created by Franz Carelle Alcoba on 5/2/13.
//  Copyright (c) 2013 Franz Carelle Alcoba. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

	imageArrayBatFlyUpDown  = [[NSArray alloc] initWithObjects:
                             [UIImage imageNamed:@"1.png"],
                             [UIImage imageNamed:@"2.png"],
                             [UIImage imageNamed:@"3.png"],
                             nil];
    imageArrayBatFlyLeft= [[NSArray alloc] initWithObjects:
                               [UIImage imageNamed:@"4.png"],
                               [UIImage imageNamed:@"5.png"],
                               [UIImage imageNamed:@"6.png"],
                               nil];
    imageArrayBatFlyRight  = [[NSArray alloc] initWithObjects:
                               [UIImage imageNamed:@"7.png"],
                               [UIImage imageNamed:@"8.png"],
                               [UIImage imageNamed:@"9.png"],
                               nil];
    
	batFly = [[UIImageView alloc] initWithFrame:
                             CGRectMake(100, 125, 150, 130)];
    
    [self performSelector:@selector(batFlyRight) withObject:nil afterDelay:.50];
    [self performSelector:@selector(batFlyLeft) withObject:nil afterDelay:1];
    [self performSelector:@selector(batFlyUpDown) withObject:nil afterDelay:1.5];
}

- (void)batFlyUpDown
{
    batFly.animationImages = imageArrayBatFlyUpDown;
	batFly.animationDuration = 0.5;
	batFly.contentMode = UIViewContentModeBottomLeft;
	[self.view addSubview:batFly];
	[batFly startAnimating];
}

- (void)batFlyLeft
{
    batFly.animationImages = imageArrayBatFlyLeft;
	batFly.animationDuration = 0.5;
	batFly.contentMode = UIViewContentModeBottomLeft;
	[self.view addSubview:batFly];
	[batFly startAnimating];
}

- (void)batFlyRight
{
    batFly.animationImages = imageArrayBatFlyRight;
	batFly.animationDuration = 0.5;
	batFly.contentMode = UIViewContentModeBottomLeft;
	[self.view addSubview:batFly];
	[batFly startAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
