//
//  ViewController.h
//  GestureTest
//
//  Created by Punya Chatterjee on 2/6/18.
//  Copyright © 2018 Punya Chatterjee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIGestureRecognizerDelegate>

- (IBAction)handlePinch:(UIPinchGestureRecognizer *)recognizer;
- (IBAction)handleRotate:(UIRotationGestureRecognizer *)recognizer;
@property (strong, nonatomic) IBOutlet UIPinchGestureRecognizer *pinchRecognizer;
@property (strong, nonatomic) IBOutlet UIRotationGestureRecognizer *rotationRecognizer;
@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *panRecognizer;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;


@end

