//
//  Robot.h
//  OBJC_HW6
//
//  Created by user on 13.03.2024.
//  Copyright © 2024 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Robot : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;

- (instancetype)initWithName:(NSString *)name x:(NSInteger)x y:(NSInteger)y;

@end
