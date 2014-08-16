//
//  FRDoneAccessory.m
//
//  Created by Freeskys on 13/08/14.
//  Copyright (c) 2014 Freeskys. All rights reserved.
//

// Constant
NSInteger const FRDoneAccessoryDefaultButtonWidth = 50;
NSInteger const FRDoneAccessoryDefaultButtonHeight = 30;

#import "FRDoneAccessory.h"

@implementation FRDoneAccessory {
    UITextField *currentTextfield;
    UITextView *currentTextview;
    
    NSString *buttonDoneLabel;
}

@synthesize buttonDone;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithBackground:(UIImage *)background
               andButton:(UIImage *)done
            andTextfield:(UITextField *)textfield
{
    return [self initWithBackground:background andButton:done andView:textfield];
}

- (id)initWithBackground:(UIImage *)background
               andButton:(UIImage *)done
             andTextView:(UITextView *)textview
{
    return [self initWithBackground:background andButton:done andView:textview];
}

- (id)initWithTextField:(UITextField *)textfield
{
    return [self initWithBackground:nil andButton:nil andView:textfield];
}

- (id)initWithTextView:(UITextView *)textview
{
    return [self initWithBackground:nil andButton:nil andView:textview];
}

- (id)rebuild
{
    // Remove button done
    [buttonDone removeFromSuperview];
    
    if (currentTextfield) {
        return [self initWithBackground:nil andButton:nil andView:currentTextfield];
    } else {
        return [self initWithBackground:nil andButton:nil andView:currentTextview];
    }
}

/**
 * This is the generic method
 */
- (id)initWithBackground:(UIImage *)background
               andButton:(UIImage *)done
                 andView:(id)view
{
    self = [super initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40)];
    if (self) {
        // Initialization code
        
        if ([view class] == [UITextView class]) {
            currentTextview = view;
        } else {
            currentTextfield = view;
        }
        
        // If background image exist
        if (background) {
            self.backgroundColor = [UIColor colorWithPatternImage:background];
        } else {
            self.backgroundColor = [UIColor lightGrayColor];
        }
        
        // If done button image exist, add text if doesn't exist
        if (done) {
            NSInteger topSpace = (NSInteger) roundf((40 - done.size.height) / 2);
            buttonDone = [[UIButton alloc]
                          initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width - done.size.width - 10,
                                                   topSpace,
                                                   done.size.width,
                                                   done.size.height)];
            [buttonDone setImage:done forState:UIControlStateNormal];
        } else {
            NSInteger topSpace = (NSInteger) roundf((40 - FRDoneAccessoryDefaultButtonHeight) / 2);
            buttonDone = [UIButton buttonWithType:UIButtonTypeSystem];
            buttonDone.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - FRDoneAccessoryDefaultButtonWidth - 10,
                                          topSpace,
                                          FRDoneAccessoryDefaultButtonWidth,
                                          FRDoneAccessoryDefaultButtonHeight);
            
            // Set text to done if the text is empty
//            if (buttonDone.titleLabel.text) {
                [buttonDone setTitle:@"Done"
                            forState:UIControlStateNormal];
//            }
            
            [buttonDone setTintColor:[UIColor blackColor]];
        }
    
        [buttonDone addTarget:self
                       action:@selector(closeTextfield)
             forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:buttonDone];
    }
    return self;
}

- (void)closeTextfield
{
    if (currentTextfield)
        [currentTextfield resignFirstResponder];
    
    if (currentTextview)
        [currentTextview resignFirstResponder];
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
