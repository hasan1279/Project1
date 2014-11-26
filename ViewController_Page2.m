//
//  ViewController_Page2.m
//  Project1
//
//  Created by Hasan Jafar on 20/11/14.
//  Copyright (c) 2014 Hasan Jafar. All rights reserved.
//

#import "ViewController_Page2.h"

@interface ViewController_Page2 ()

@end

@implementation ViewController_Page2
@synthesize imgDice;
@synthesize simpleImgLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alertMessageImage {
    UIAlertView *alrtMsgImg = [[UIAlertView alloc] initWithTitle:@"Alert Message 2" message:@"Click this Apple Logo to go to next page." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alrtMsgImg show];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
