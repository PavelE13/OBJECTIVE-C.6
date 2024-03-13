//
//  ViewController.h
//  OBJC_HW6
//
//  Created by user on 13.03.2024.
//  Copyright © 2024 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *xTextField;
@property (weak, nonatomic) IBOutlet UITextField *yTextField;
@property (weak, nonatomic) IBOutlet UIButton *safeUserDefaultButton;
@property (weak, nonatomic) IBOutlet UIButton *safeFileButton;

@end

