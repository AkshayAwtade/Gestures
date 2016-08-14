//
//  ViewController.m
//  TapGesture1
//
//  Created by Student P_03 on 11/08/16.
//  Copyright © 2016 Akshay Awtade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tapOne =[[UITapGestureRecognizer alloc]init];
    [tapOne addTarget:self action:@selector(tapAction:)];
    [tapOne setNumberOfTapsRequired:1];
    [self.labelOne addGestureRecognizer:tapOne];
    [self.labelOne setUserInteractionEnabled:YES];
    
    UITapGestureRecognizer *tapTwo =[[UITapGestureRecognizer alloc]init];
    [tapTwo addTarget:self action:@selector(tapActionTwo:)];
    [tapTwo setNumberOfTapsRequired:2];
    [self.labelTwo addGestureRecognizer:tapTwo];
    [self.labelTwo setUserInteractionEnabled:YES];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)tapAction:(id) sender{
//    self.labelOne.textColor=[UIColor whiteColor];
    self.labelOne.text=@"1";
    
    
}
-(void)tapActionTwo:(id) sender{
//    self.labelTwo.textColor=[UIColor whiteColor];
    self.labelTwo.text=@"2";
    
    
}


@end
