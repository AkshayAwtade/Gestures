//
//  ViewController.m
//  Pan Gesture
//
//  Created by Student P_03 on 12/08/16.
//  Copyright © 2016 Akshay Awtade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc ]init];
    [panRecognizer addTarget:self action:@selector(pan:)];
    UIView *customView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [customView setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:customView];
    
    [customView addGestureRecognizer:panRecognizer];
    [customView setUserInteractionEnabled:YES];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) pan:(id)sender{
    UIPanGestureRecognizer *panGesture = sender;
    static CGRect originalframe;
    

   
    if (panGesture.state == UIGestureRecognizerStateBegan) {
        
        originalframe = panGesture.view.frame;
        [panGesture.view setBackgroundColor:[UIColor blueColor]];
    }
    else
    if(panGesture.state == UIGestureRecognizerStateChanged)
    {
                NSLog(@"%f %f",originalframe.origin.x,originalframe.origin.y);
        CGPoint changeInLocation = [panGesture translationInView:self.view];
        [panGesture.view setFrame:CGRectMake(originalframe.origin.x+changeInLocation.x, originalframe.origin.y+changeInLocation.y,originalframe.size.width, originalframe.size.height)];
    }
    else
        if(panGesture.state == UIGestureRecognizerStateEnded)
    {
        [panGesture.view setBackgroundColor:[UIColor redColor]];
    }
}





@end
