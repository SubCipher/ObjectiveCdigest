//
//  PracticeVCNoClass.h
//  prog1
//
//  Created by MacMan on 9/19/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PracticeVCNoClass : NSViewController

@property (strong,nonatomic)NSString *firstName;
@property (strong,nonatomic)NSString *lastName;
@property NSInteger age;


-(NSInteger )calculateAge:(NSInteger )currentDate : (NSInteger)bithDate;

@end
