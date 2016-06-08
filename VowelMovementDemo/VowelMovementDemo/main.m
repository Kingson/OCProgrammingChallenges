//
//  main.m
//  VowelMovementDemo
//
//  Created by Kingson on 6/8/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

//typedef void(^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        
        NSLog(@"original strings: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
//        void (^devowelizer)(id, NSUInteger, BOOL *);
        
//        ArrayEnumerationBlock devowelizer;
//        
//        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
//            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
//            
//            if (yRange.location != NSNotFound) {
//                *stop = YES;
//                return;
//            }
//            
//            NSMutableString *newString = [NSMutableString stringWithString:string];
//            
//            for (NSString *s in vowels) {
//                NSRange fullRange = NSMakeRange(0, [newString length]);
//                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
//            }
//            
//            [devowelizedStrings addObject:newString];
//        };
        
        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop){
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            
            if (yRange.location != NSNotFound) {
                *stop = YES;
                return;
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        }];
        
//        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new strings: %@", devowelizedStrings);
    }
    return 0;
}
