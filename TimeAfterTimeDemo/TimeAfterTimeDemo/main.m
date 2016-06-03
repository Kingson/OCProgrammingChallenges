//
//  main.m
//  TimeAfterTimeDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f senconds since the start of 1970.", seconds);
        
//        double testSeconds = [NSDate timeIntervalSince1970];
//        NSDate *testNow = [now date];
//        
//        //输入错误的选择器名
//        testSeconds = [now fooIntervalSince1970];
        NSLog(@"%f", [NSDate timeIntervalSinceReferenceDate]);
        
        NSDate *later = [now dateByAddingTimeInterval:-100000];
        NSLog(@"In 100,000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                           inUnit:NSCalendarUnitMonth
                                           forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
    }
    return 0;
}
