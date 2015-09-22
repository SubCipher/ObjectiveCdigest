//
//  FooClass.h
//  ObjectiveCdigestPlus
//
//  Created by MacMan on 9/20/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FooClass : NSObject

@property(strong,nonatomic) NSString *firstName;
@property(strong,nonatomic) NSString *lastName;

@property NSInteger age;

@property NSInteger foo2;

-(NSInteger )calculateBirthDate:(NSDate *)currentDate birthday: (NSDate *)birthday;

@end
