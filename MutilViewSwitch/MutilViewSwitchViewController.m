//
//  MutilViewSwitchViewController.m
//  MutilViewSwitch
//
//  Created by changhu on 13-8-11.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import "MutilViewSwitchViewController.h"

@interface MutilViewSwitchViewController ()

@end

@implementation MutilViewSwitchViewController

@synthesize yellowViewController;
@synthesize blueViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //设置界面首次打开的适合显示蓝色视图
    BlueViewController *blueVC = [[BlueViewController alloc]initWithNibName:@"BlueViewController" bundle:nil];
    self.blueViewController = blueVC;
    [blueVC release];
    [self.view insertSubview:blueViewController.view atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)switchView:(id)sender{
    NSLog(@"switch view....");
    //判断黄色视图的父项视图是否为空，如果为空表示显示的不是黄色视图
    if(self.yellowViewController.view.superview == nil){
        
        //初次显示，创建黄色视图
        if(self.yellowViewController.view == nil){
            YellowViewController *yellowVC = [[YellowViewController alloc]initWithNibName:@"YellowViewController" bundle:nil];
            
            self.yellowViewController = yellowVC;
            [yellowVC release];
        }
        //删除蓝色视图
        [blueViewController.view removeFromSuperview];
        //显示黄色视图
        [self.view insertSubview:yellowViewController.view atIndex:0];
    }else {
        
        
        if(self.blueViewController.view == nil){
            BlueViewController *blueVC = [[BlueViewController alloc]initWithNibName:@"BlueViewController" bundle:nil];
            
            self.blueViewController = blueVC;
            [blueVC release];
        }
        [yellowViewController.view removeFromSuperview];
        [self.view insertSubview:blueViewController.view atIndex:0];
    }
}

-(void)dealloc{
    [yellowViewController release];
    [blueViewController release];
    [super dealloc];
}

@end
