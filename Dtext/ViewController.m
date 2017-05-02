//
//  ViewController.m
//  NullTest
//
//  Created by Ys on 2017/4/20.
//  Copyright © 2017年 Ys. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)push:(UIButton*)sender {
    
    NSString *S1=[NSNull null];
    NSString *S2=nil;
    NSString *S3=NULL;
    NSString *S4=@"<null>z";
    NSString *S5=@"(null)(null)）1<null><null>";

    sender.Dtext=S4;
    
    UITextField *A;
    A.Dtext=S5;
    
    UITextView *B;
    B.Dtext=S5;
}



-(void)viewWillAppear:(BOOL)animated{

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSString *S1=[NSNull null];
    NSString *S2=nil;
    NSString *S3=NULL;
    NSString *S4=@"<null>z";
    NSString *S5=@"(null)1(null)(null)）1<null><null>";
    
    _LAbel.Dtext=S5;
    


    

    
    
    
}

@end
