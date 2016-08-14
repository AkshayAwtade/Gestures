//
//  ViewController.m
//  TouchGesture
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
    self.labelx =[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.labelx setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:self.labelx];
    self.labely =[[UILabel alloc]initWithFrame:CGRectMake(250, 100, 100, 100)];
    [self.labely setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:self.labely];
    
    self.labelmsg =[[UILabel alloc]initWithFrame:CGRectMake(175, 250, 100, 100)];
    [self.labelmsg setBackgroundColor:[UIColor redColor]];
    [self.labelmsg setNumberOfLines:2];
    [self.view addSubview:self.labelmsg];

        // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    for(UITouch * touch in touches)
    {
        CGPoint pointInTouch = [touch locationInView:self.view];
        
        NSLog(@"%f %f",pointInTouch.x,pointInTouch.y);
        self.labelx.text= [NSString stringWithFormat:@"%f",pointInTouch.x];
         self.labely.text= [NSString stringWithFormat:@"%f",pointInTouch.y];
       
    }
     self.labelmsg.text=@"Touched";
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    for(UITouch * touch in touches)
    {
        CGPoint pointinTouches=[touch locationInView:self.view];
       self.labely.text= [NSString stringWithFormat:@"%f",pointinTouches.y];
        self.labelx.text= [NSString stringWithFormat:@"%f",pointinTouches.x];
        
    }
    self.labelmsg.text=@"touched and moved";
}



@end
