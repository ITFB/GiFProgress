//
//  ViewController.m
//  GifProgress
//
//  Created by Jevon on 14/11/26.
//  Copyright (c) 2014年 Jevon. All rights reserved.
//

#import "ViewController.h"
#import "GiFHUD.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [GiFHUD setGifWithImageName:@"pika.gif"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)show:(id)sender {
    [GiFHUD show];
}

- (IBAction)showOverLay:(id)sender {
    [GiFHUD showWithOverlay];
    
    // dismiss after 2 seconds
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [GiFHUD dismiss];
    });
}

- (IBAction)disMiss:(id)sender {
    [GiFHUD dismiss];
}
@end
