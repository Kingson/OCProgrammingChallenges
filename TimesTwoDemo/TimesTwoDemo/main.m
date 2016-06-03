//
//  main.m
//  TimesTwoDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
        NSLog(@"currentTime's value is %@", currentTime);
        NSLog(@"currentTime's value is %p", &currentTime);
        NSLog(@"currentTime's value is %p", &*currentTime);
        
        NSDate *startTime = currentTime;
        
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
        NSLog(@"currentTime's value is %@", currentTime);
        NSLog(@"currentTime's value is %p", &currentTime);
        
        currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime);
        
        NSLog(@"startTime's value is %p", startTime);
        NSLog(@"startTime's value is %@", startTime);
        NSLog(@"startTime's value is %p", &startTime);
    }
    return 0;
}
