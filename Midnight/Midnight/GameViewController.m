//
//  GameViewController.m
//  Midnight
//
//  Created by Franz Carelle Alcoba on 5/2/13.
//  Copyright (c) 2013 Franz Carelle Alcoba. All rights reserved.
//

#import "GameViewController.h"

#define bat_RADIUS 15

@interface GameViewController ()

@end

@implementation GameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

-(void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration {
    
    valueX = acceleration.y * 25.0;
    
    newX = (int)(batFly.center.x + valueX);
    
    if (newX > 540 - bat_RADIUS)
        newX = 540 - bat_RADIUS;
    
    if (newX < 55 + bat_RADIUS)
        newX = 55 + bat_RADIUS;
    
    CGPoint newCenter = CGPointMake(newX, batFly.center.y);
    batFly.center = newCenter;
    //[self playerTilt];
}

-(void)playerTilt
{
    
}

- (void)viewDidLoad
{
    

	batFly = [[UIImageView alloc] initWithFrame:CGRectMake(100, 125, 150, 130)];
    
    [[UIAccelerometer sharedAccelerometer] setUpdateInterval:1.0/30.0];
    [[UIAccelerometer sharedAccelerometer] setDelegate:self];
    
    if (newX <= 0){
        [self batFlyLeft];
        DLog(@"aw %d",newX);
    } else {
        [self batFlyRight];
        DLog(@"we");
    }
    
    [batFly release];
    [super viewDidLoad];
}

-(void)batFlyUpDown
{
    imageArrayBatFlyUpDown  = [[NSArray alloc] initWithObjects:
                               [UIImage imageNamed:@"1.png"],
                               [UIImage imageNamed:@"2.png"],
                               [UIImage imageNamed:@"3.png"],nil];
    batFly.animationImages = imageArrayBatFlyUpDown;
	batFly.animationDuration = 0.5;
	batFly.contentMode = UIViewContentModeBottomLeft;
	[self.view addSubview:batFly];
	[batFly startAnimating];
    [imageArrayBatFlyUpDown release];
}

- (void)batFlyLeft
{
    imageArrayBatFlyLeft= [[NSArray alloc] initWithObjects:
                           [UIImage imageNamed:@"4.png"],
                           [UIImage imageNamed:@"5.png"],
                           [UIImage imageNamed:@"6.png"],
                           nil];
    
    batFly.animationImages = imageArrayBatFlyLeft;
	batFly.animationDuration = 0.5;
	batFly.contentMode = UIViewContentModeBottomLeft;
	[self.view addSubview:batFly];
	[batFly startAnimating];
    [imageArrayBatFlyLeft release];
}

- (void)batFlyRight
{
    imageArrayBatFlyRight  = [[NSArray alloc] initWithObjects:
                              [UIImage imageNamed:@"7.png"],
                              [UIImage imageNamed:@"8.png"],
                              [UIImage imageNamed:@"9.png"],
                              nil];
    
    batFly.animationImages = imageArrayBatFlyRight;
	batFly.animationDuration = 0.5;
	batFly.contentMode = UIViewContentModeBottomLeft;
	[self.view addSubview:batFly];
	[batFly startAnimating];
    [imageArrayBatFlyRight release];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)dealloc
{
    [[UIAccelerometer sharedAccelerometer]setDelegate:nil];
    [super dealloc];
    
}
-(void)viewDidUnload
{
    batFly = nil;
    [[UIAccelerometer sharedAccelerometer]setDelegate:nil];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
