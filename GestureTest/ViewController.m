//
//  ViewController.m
//  GestureTest
//
//  Created by Punya Chatterjee on 2/6/18.
//  Copyright © 2018 Punya Chatterjee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Initialization

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - IBActions

- (IBAction)handlePinch:(UIPinchGestureRecognizer *)recognizer {
    recognizer.view.transform = CGAffineTransformScale(recognizer.view.transform, recognizer.scale, recognizer.scale);
    recognizer.scale = 1;
}

- (IBAction)handleRotate:(UIRotationGestureRecognizer *)recognizer {
    recognizer.view.transform = CGAffineTransformRotate(recognizer.view.transform, recognizer.rotation);
    recognizer.rotation = 0;
}

- (IBAction)handlePan:(UIPanGestureRecognizer *) recognizer {
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x,
                                         recognizer.view.center.y + translation.y);
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
}

- (IBAction)segmentChanged:(UISegmentedControl *)sender {
    NSArray *titles = @[@"Plain", @"Rotate + Pan", @"Rotate + Pinch",
                        @"Pan + Pinch", @"All"];
    NSInteger index = sender.selectedSegmentIndex;
    if (index < [titles count]) {
        _titleLabel.text = titles[index];
    }
}


#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    
    switch (_segmentedControl.selectedSegmentIndex) {
        case 1:
            if (otherGestureRecognizer == _pinchRecognizer ||
                gestureRecognizer == _pinchRecognizer) {
                return NO;
            }
            break;
        case 2:
            if (otherGestureRecognizer == _panRecognizer ||
                gestureRecognizer == _panRecognizer) {
                return NO;
            }
            break;
        case 3:
            if (otherGestureRecognizer == _rotationRecognizer ||
                gestureRecognizer == _rotationRecognizer) {
                return NO;
            }
            break;
        case 4:
            return YES;
        default:
            return NO;
    }
    return YES;
}

@end
