//
//  ViewController.m
//  DataEncapsulation
//
//  Created by Janie Clayton-Hasz on 2/16/14.
//  Copyright (c) 2014 Third Impact Software. All rights reserved.
//

#import "ViewController.h"
#import "Demo.h"

@interface ViewController ()

@property (strong, nonatomic) Demo *myDemo;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _myDemo = [Demo new];
    
    // The only string we have access to here from Demo is the first string. The others are outside of scope
    _myDemo.firstString = @"Hello world!";
    [self.myLabel setText:_myDemo.firstString];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
