//
//  ViewController.m
//  FRDoneAccessory-Demo
//
//  Created by Freeskys on 16/08/14.
//  Copyright (c) 2014 Freeskys. All rights reserved.
//

#import "ViewController.h"

// Internal Import
#import "FRDoneAccessory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self doUserInterface];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Initialization
- (void)doUserInterface
{
    // Add accessory to textfield & textview (With style)
    self.textfieldAmount.inputAccessoryView = [[FRDoneAccessory alloc]
                                               initWithBackground:[UIImage imageNamed:@"BackgroundAccessory"]
                                               andButton:[UIImage imageNamed:@"ButtonDone"]
                                               andTextfield:self.textfieldAmount];
    self.textviewDescription.inputAccessoryView = [[FRDoneAccessory alloc]
                                                   initWithBackground:[UIImage imageNamed:@"BackgroundAccessory"]
                                                   andButton:[UIImage imageNamed:@"ButtonDone"]
                                                   andTextView:self.textviewDescription];
    
    // Add accessory to textfield & textview (Without style)
    FRDoneAccessory *amountAccessory = [[FRDoneAccessory alloc]
                                        initWithTextField:self.textfieldAmountNative];
    self.textfieldAmountNative.inputAccessoryView = [amountAccessory rebuild];
    self.textviewDescriptionNative.inputAccessoryView = [[FRDoneAccessory alloc]
                                                         initWithTextView:self.textviewDescriptionNative];
}

@end
