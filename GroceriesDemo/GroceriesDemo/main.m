//
//  main.m
//  GroceriesDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *lists = [NSMutableArray array];
        [lists addObject:@"Loaf of bread"];
        [lists addObject:@"Container of milk"];
        [lists addObject:@"Stick of butter"];
        
        for (NSString *food in lists) {
            NSLog(@"What the food in the lists : %@", food);
        }
    }
    return 0;
}
