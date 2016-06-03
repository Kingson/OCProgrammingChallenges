//
//  main.m
//  NSDateDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDate *currentDate = [NSDate date];
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1985];
        [comps setMonth:3];
        [comps setDay:23];
        [comps setHour:12];
        [comps setMinute:00];
        [comps setSecond:00];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        double secondsSinceEarlierDate = [currentDate timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"time interval is %f", secondsSinceEarlierDate);
    }
    return 0;
}
