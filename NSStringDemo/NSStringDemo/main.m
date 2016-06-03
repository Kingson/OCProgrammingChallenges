//
//  main.m
//  NSStringDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *book = @"math, Chinese, Thiland";
        if ([book rangeOfString:@"mAth" options:NSCaseInsensitiveSearch].location == NSNotFound) {
            NSLog(@"not found");
        }else{
            NSLog(@"found");
        }
    }
    return 0;
}
