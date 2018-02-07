//
//  RoundedView.m
//  GestureTest
//
//  Created by Punya Chatterjee on 2/6/18.
//  Copyright © 2018 Punya Chatterjee. All rights reserved.
//

#import "RoundedView.h"

@implementation IBInspectable RoundedView

- (id)initWithFrame:(CGRect)frame;
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder;
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit;
{
    CALayer *layer = self.layer;
    layer.cornerRadius  = 20.0f;
    layer.masksToBounds = YES;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
