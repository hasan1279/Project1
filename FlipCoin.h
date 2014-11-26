//
//  FlipCoin.h
//  Project1
//
//  Created by Hasan Jafar on 21/11/14.
//  Copyright (c) 2014 Hasan Jafar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlipCoin : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *tossResult;

- (IBAction)toss:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *coin;
- (IBAction)resultTable:(id)sender;

- (IBAction)navtoOne:(UIButton *)sender;



@end
