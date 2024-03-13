//
//  ViewController.m
//  OBJC_HW6
//
//  Created by user on 13.03.2024.
//  Copyright © 2024 user. All rights reserved.
//

#import "ViewController.h"
#import "Robot.h"

@interface ViewController ()

@property (nonatomic, strong) UITextField *nameTextField;
@property (nonatomic, strong) UITextField *xTextField;
@property (nonatomic, strong) UITextField *yTextField;
@property (nonatomic, strong) UIButton *saveUserDefaultsButton;
@property (nonatomic, strong) UIButton *saveFileButton;
@property (nonatomic, strong) UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, 200, 30)];
    self.nameTextField.placeholder = @"Enter name";
    [self.view addSubview:self.nameTextField];
    
    self.xTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 150, 200, 30)];
    self.xTextField.placeholder = @"Enter X coordinate";
    [self.view addSubview:self.xTextField];
    
    self.yTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 200, 200, 30)];
    self.yTextField.placeholder = @"Enter Y coordinate";
    [self.view addSubview:self.yTextField];
    
    self.saveUserDefaultsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.saveUserDefaultsButton.frame = CGRectMake(20, 250, 200, 40);
    [self.saveUserDefaultsButton setTitle:@"Save to UserDefaults" forState:UIControlStateNormal];
    [self.saveUserDefaultsButton addTarget:self action:@selector(saveToUserDefaults) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.saveUserDefaultsButton];
    
    self.saveFileButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.saveFileButton.frame = CGRectMake(20, 300, 200, 40);
    [self.saveFileButton setTitle:@"Save to File" forState:UIControlStateNormal];
    [self.saveFileButton addTarget:self action:@selector(saveToFile) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.saveFileButton];
    
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(20, 350, 300, 200)];
    [self.view addSubview:self.textView];
}

- (void)saveToUserDefaults {
    NSString *name = self.nameTextField.text;
    NSInteger x = [self.xTextField.text integerValue];
    NSInteger y = [self.yTextField.text integerValue];
    
    Robot *robot = [[Robot alloc] initWithName:name x:x y:y];
    
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
    [[NSUserDefaults standardUserDefaults] setObject:robotData forKey:name];
}

- (void)saveToFile {
    NSString *name = self.nameTextField.text;
    NSInteger x = [self.xTextField.text integerValue];
    NSInteger y = [self.yTextField.text integerValue];
    
    Robot *robot = [[Robot alloc] initWithName:name x:x y:y];
    
    NSString *filePath = [NSString stringWithFormat:@"%@/%@.txt", NSTemporaryDirectory(), name];
    
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
    [robotData writeToFile:filePath atomically:YES];
    
}@end
