//
//  YellowViewController.m
//  MutilViewSwitch
//
//  Created by changhu on 13-8-11.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import "YellowViewController.h"

@interface YellowViewController ()

@end

@implementation YellowViewController

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
    // Do any additional setup after loading the view from its nib.
}

-(void)clickBtn:(id)sender{
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"信息" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    
    
    [alert show];
    [alert release];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
