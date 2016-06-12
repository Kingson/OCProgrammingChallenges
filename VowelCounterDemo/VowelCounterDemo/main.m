//
//  main.m
//  VowelCounterDemo
//
//  Created by Kingson on 6/12/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRVowelCounting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *string = @"Hello World!";
        NSLog(@"%@ ha %d vowels", string, [string bnr_vowelCount]);
    }
    return 0;
}
