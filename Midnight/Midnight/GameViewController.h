//
//  GameViewController.h
//  Midnight
//
//  Created by Franz Carelle Alcoba on 5/2/13.
//  Copyright (c) 2013 Franz Carelle Alcoba. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController <UIAccelerometerDelegate>
{
    NSArray * imageArrayBatFlyUpDown;
    NSArray * imageArrayBatFlyRight;
    NSArray * imageArrayBatFlyLeft;
    
    float valueX;
    int newX;
    UIImageView *batFly;
}
@end
