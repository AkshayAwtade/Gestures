//
//  ViewController.m
//  Swipe&Shake Gesture
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
    // Do any additional setup after loading the view, typically from a nib.
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]init];
    [swipeLeft addTarget:self action:@selector(onSwipe:)];
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]init];
    [swipeRight addTarget:self action:@selector(onSwipe:)];
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc]init];
    [swipeUp addTarget:self action:@selector(onSwipe:)];
    UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc]init];
    [swipeDown addTarget:self action:@selector(onSwipe:)];
    
    [self.view addGestureRecognizer:swipeRight];
        [self.view addGestureRecognizer:swipeLeft];
        [self.view addGestureRecognizer:swipeDown];
        [self.view addGestureRecognizer:swipeUp];
    
    
    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
    [swipeDown setDirection:UISwipeGestureRecognizerDirectionDown];
    [swipeUp setDirection:UISwipeGestureRecognizerDirectionUp];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onSwipe:(id) sender{
    UISwipeGestureRecognizer *swipe =sender;
    switch (swipe.direction) {
        case UISwipeGestureRecognizerDirectionRight:
        {
            
            [self.view setBackgroundColor:[UIColor blueColor]];
            self.labelGesture.text=@"Swiped Right";
            break;
        }
        case UISwipeGestureRecognizerDirectionLeft:
        {
            self.labelGesture.text=@"Swiped Left";
            [self.view setBackgroundColor:[UIColor redColor]];

            break;
        }
        case UISwipeGestureRecognizerDirectionUp:
        {
            self.labelGesture.text=@"Swiped Up";
            
            [self.view setBackgroundColor:[UIColor greenColor]];

            break;
        }
        
        case UISwipeGestureRecognizerDirectionDown:
        {
            self.labelGesture.text=@"Swiped Down";
            
            [self.view setBackgroundColor:[UIColor orangeColor]];

            break;
        }        default:
            break;
    }
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    self.labelGesture.text=@"Device Shaked ";
}

@end
