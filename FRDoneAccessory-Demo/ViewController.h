//
//  ViewController.h
//  FRDoneAccessory-Demo
//
//  Created by Freeskys on 16/08/14.
//  Copyright (c) 2014 Freeskys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textfieldAmount;
@property (weak, nonatomic) IBOutlet UITextView *textviewDescription;
@property (weak, nonatomic) IBOutlet UITextField *textfieldAmountNative;
@property (weak, nonatomic) IBOutlet UITextView *textviewDescriptionNative;

//----------- Initialization -----------
- (void)doUserInterface;

@end
