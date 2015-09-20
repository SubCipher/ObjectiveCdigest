//
//  PracticeVCNoClass.m
//  prog1
//
//  Created by MacMan on 9/19/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "PracticeVCNoClass.h"

@implementation PracticeVCNoClass


-(NSInteger )calculateAge:(NSInteger )currentDate : (NSInteger)bithDate {
    
    NSInteger result;
    currentDate = 1882;
    bithDate = 1985;
    result = bithDate - currentDate;
    NSLog(@"HERE IT BE!!!! %ld",(long)result);
    return result;

}



@end
