//
//  FooClass.m
//  ObjectiveCdigestPlus
//
//  Created by MacMan on 9/20/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "FooClass.h"

@implementation FooClass



-(void)calculateBirthDate:(NSDate *)currentDate BDay:(NSDate *)BDay {
    
    NSDate *birthday = 2/4/1971;
    
    NSDate * now = [NSDate date];
    NSDateComponents* ageComponents = [[NSCalendar currentCalendar]
                                       components:NSCalendarUnitYear
                                       fromDate:birthday
                                       toDate:now
                                       options:0];
    NSInteger age = [ageComponents year];
    
    
}

@end
