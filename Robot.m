//
//  Robot.m
//  OBJC_HW6
//
//  Created by user on 13.03.2024.
//  Copyright © 2024 user. All rights reserved.
//

#import "Robot.h"

@implementation Robot

- (instancetype)initWithName:(NSString *)name x:(NSInteger)x y:(NSInteger)y {
    self = [super init];
    if (self) {
        _name = name;
        _x = x;
        _y = y;
    }
    return self;
}

@end
