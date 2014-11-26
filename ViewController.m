//
//  ViewController.m
//  Project1
//
//  Created by Hasan Jafar on 20/11/14.
//  Copyright (c) 2014 Hasan Jafar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog (@"Page 1");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)alertMessageShow {
    UIAlertView *alrtMsg = [[UIAlertView alloc] initWithTitle:@"Alert Box" message:@"My first iPhone Application" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alrtMsg show];
}

@end
