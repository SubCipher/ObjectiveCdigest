//
//  FooClass.m
//  ObjectiveCdigestPlus
//
//  Created by MacMan on 9/20/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "FooClass.h"

@implementation FooClass

-(NSInteger )calculateBirthDate:(NSDate *)currentDate birthday: (NSDate *)birthday {

NSDateComponents* ageComponents = [[NSCalendar currentCalendar]
                                   components:NSCalendarUnitYear
                                   fromDate:birthday
                                   toDate:currentDate
                                   options:0];
NSInteger age = [ageComponents year];
    
    NSLog(@"this is from the fooClass %ld",(long)age);
    NSLog(@"this is from the fooClass %ld",(long)age);
    return age;
    
}



@end
