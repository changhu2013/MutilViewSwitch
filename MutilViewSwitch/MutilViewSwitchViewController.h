//
//  MutilViewSwitchViewController.h
//  MutilViewSwitch
//
//  Created by changhu on 13-8-11.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YellowViewController.h"
#import "BlueViewController.h"

@interface MutilViewSwitchViewController : UIViewController {

    YellowViewController *yellowViewController;
    BlueViewController *blueViewController;
    
}

@property (nonatomic, retain) YellowViewController *yellowViewController;
@property (nonatomic, retain) BlueViewController *blueViewController;

-(IBAction)switchView:(id)sender;

@end
