//
//  FRDoneAccessory.m
//
//  Created by Freeskys on 13/08/14.
//  Copyright (c) 2014 Freeskys. All rights reserved.
//

#import "FRDoneAccessory.h"

@implementation FRDoneAccessory {
    UITextField *currentTextfield;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithBackground:(UIImage *)background andButton:(UIImage *)done andTextfield:(UITextField *)textfield
{
    self = [super initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40)];
    if (self) {
        // Initialization code
        currentTextfield = textfield;
        self.backgroundColor = [UIColor colorWithPatternImage:background];
        
        NSInteger topSpace = (NSInteger) roundf((40 - done.size.height) / 2);
        UIButton *buttonDone = [[UIButton alloc]
                                initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width - done.size.width - 10,
                                                         topSpace,
                                                         done.size.width,
                                                         done.size.height)];
        [buttonDone setImage:done forState:UIControlStateNormal];
        [buttonDone addTarget:self action:@selector(closeTextfield) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:buttonDone];
    }
    return self;
}

- (void)closeTextfield
{
    [currentTextfield resignFirstResponder];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
