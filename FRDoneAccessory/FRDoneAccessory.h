//
//  FRDoneAccessory.h
//
//  Created by Freeskys on 13/08/14.
//  Copyright (c) 2014 Freeskys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FRDoneAccessory : UIView

@property (strong, nonatomic) UIButton *buttonDone;

/**
 * Initialize FR Done Accessory
 *
 * @param background Background of the keyboard accessory
 * @param done Done button of the keyboard accessory
 * @param textfield Textfield to be processed
 *
 * @return FRDoneAccessory as UIView
 */
- (id)initWithBackground:(UIImage *)background
               andButton:(UIImage *)done
            andTextfield:(UITextField *)textfield;

/**
 * Initialize FR Done Accessory
 *
 * @param background Background of the keyboard accessory
 * @param done Done button of the keyboard accessory
 * @param textview Textview to be processed
 *
 * @return FRDoneAccessory as UIView
 */
- (id)initWithBackground:(UIImage *)background
               andButton:(UIImage *)done
             andTextView:(UITextView *)textview;

/**
 * Initialize FR Done Accessory with native styling
 *
 * @param textfield Textfield to be processed
 *
 * @return FRDoneAccessory as UIView
 */
- (id)initWithTextField:(UITextField *)textfield;

/**
 * Initialize FR Done Accessory with native styling
 *
 * @param textview Textview to be processed
 *
 * @return FRDoneAccessory as UIView
 */
- (id)initWithTextView:(UITextView *)textview;

/**
 * Initialize FR Done Accessory with native styling
 *
 * @param color Background color
 * @param buttonLabel Done button label
 * @param buttonColor Done button color
 * @param textfield TextField to be processed
 *
 * @return FRDoneAccessory as UIView
 */
- (id)initWithBackgroundColor:(UIColor *)color
               andButtonLabel:(NSString *)buttonLabel
               andButtonColor:(UIColor *)buttonColor
                 andTextField:(UITextField *)textfield;

/**
 * Initialize FR Done Accessory with native styling
 *
 * @param color Background color
 * @param buttonLabel Done button label
 * @param buttonColor Done button color
 * @param textview Textview to be processed
 *
 * @return FRDoneAccessory as UIView
 */
- (id)initWithBackgroundColor:(UIColor *)color
               andButtonLabel:(NSString *)buttonLabel
               andButtonColor:(UIColor *)buttonColor
                  andTextView:(UITextView *)textview;


@end
