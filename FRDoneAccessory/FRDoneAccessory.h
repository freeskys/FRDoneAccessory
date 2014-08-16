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
- (id)initWithBackground:(UIImage *)background andButton:(UIImage *)done andTextfield:(UITextField *)textfield;

/**
 * Initialize FR Done Accessory
 *
 * @param background Background of the keyboard accessory
 * @param done Done button of the keyboard accessory
 * @param textview Textview to be processed
 *
 * @return FRDoneAccessory as UIView
 */
- (id)initWithBackground:(UIImage *)background andButton:(UIImage *)done andTextView:(UITextView *)textview;

/**
 * Initialize FR Done Accessory
 *
 * @param textfield Textfield to be processed
 *
 * @return FRDoneAccessory as UIView
 */
- (id)initWithTextField:(UITextField *)textfield;

/**
 * Initialize FR Done Accessory
 *
 * @param textview Textview to be processed
 *
 * @return FRDoneAccessory as UIView
 */
- (id)initWithTextView:(UITextView *)textview;

- (id)rebuild;

@end
