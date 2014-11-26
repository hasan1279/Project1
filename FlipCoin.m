//
//  FlipCoin.m
//  Project1
//
//  Created by Hasan Jafar on 21/11/14.
//  Copyright (c) 2014 Hasan Jafar. All rights reserved.
//

#import "FlipCoin.h"
#import "ViewController.h"
@interface FlipCoin ()

@end

UIImageView *imgViewCoin;
NSMutableArray *resultArray;
int randy=0;

@implementation FlipCoin
@synthesize tossResult;
@synthesize coin;

- (void)viewDidLoad {
    resultArray= [NSMutableArray array];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)toss:(id)sender {
    
    [UIView animateWithDuration:2
                          delay:0
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:(void (^)(void)) ^{
                         coin.transform=CGAffineTransformMakeScale(0.2, 0.2);
                     }
                     completion:^(BOOL finished){
                         
                     }];

    coin.hidden=TRUE;
    
    NSArray * imageArray  = [[NSArray alloc] initWithObjects:
                             [UIImage imageNamed:@"coin1.png"],
                             [UIImage imageNamed:@"coin2.png"],
                             [UIImage imageNamed:@"coin3.png"],
                             [UIImage imageNamed:@"coin4.png"],
                             [UIImage imageNamed:@"coin5.png"],
                             [UIImage imageNamed:@"coin6.png"],
                             [UIImage imageNamed:@"coin7.png"],
                             [UIImage imageNamed:@"coin8.png"],
                             [UIImage imageNamed:@"coin9.png"],
                             [UIImage imageNamed:@"coin10.png"],
                             [UIImage imageNamed:@"coin11.png"],
                             [UIImage imageNamed:@"coin12.png"],
                             [UIImage imageNamed:@"coin13.png"],
                             [UIImage imageNamed:@"coin14.png"],
                             nil];
    imgViewCoin = [[UIImageView alloc] initWithFrame:
               CGRectMake(25, 125, 200, 200)];
    imgViewCoin.animationImages = imageArray;
    imgViewCoin.animationDuration = 1;
    imgViewCoin.contentMode = UIViewContentModeBottomLeft;
    [self.view addSubview:imgViewCoin];
    [imgViewCoin startAnimating];
    [self performSelector:@selector(stopTheAnimation) withObject:nil afterDelay:3.0];

}

- (void)stopTheAnimation {
    [imgViewCoin stopAnimating];
    
    int num=[self headsOrTails];
    //below was for testing the random number
    //  NSString * input=[NSString stringWithFormat:@"%d", num ];
    // _number.text=input;
    
    UIImage *resultImage;
 //   resultArray= [NSMutableArray array];
    if(num==2){
        resultImage = [UIImage imageNamed: @"tails.png"];
        tossResult.text=@"Tails";
     //   [resultArray objectAtIndex:indx=tossResult.text];
        [resultArray addObject:@"Tails"];
        
    }else{
        resultImage = [UIImage imageNamed: @"heads.png"];
        tossResult.text=@"Heads";
        [resultArray addObject:tossResult.text];
  //      resultArray=[NSArray arrayWithObjects:@"Heads", nil];
    }
    [coin setImage:resultImage];
    coin.hidden=FALSE;
    
    [UIView animateWithDuration:2
                          delay:0
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:(void (^)(void)) ^{
                         coin.transform=CGAffineTransformMakeScale(1, 1);
                     }
                     completion:^(BOOL finished){
                         
                     }];
    for (int indx=0; indx<[resultArray count]; indx++) {
        NSLog(@"%@",resultArray[indx]);
    }
}


-(int)headsOrTails {
    randy = (arc4random() % 2 + 1);
    return randy;
}

- (IBAction)resultTable:(id)sender {
    
}

- (IBAction)navtoOne:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
    NSArray* array = [self.navigationController viewControllers];
 //   for(UIViewController* cont in array){
   //ç
     //   }
        
    //}
    for(int count = 0; count < [array count];count++){
        if([[array objectAtIndex:count] isKindOfClass:[ViewController class]]){
            [self.navigationController popToViewController:[array objectAtIndex:count] animated:YES];
        }
    }
}
@end
