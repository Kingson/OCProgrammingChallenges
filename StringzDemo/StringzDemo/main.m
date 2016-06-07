//
//  main.m
//  StringzDemo
//
//  Created by Kingson on 6/7/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableString *str = [[NSMutableString alloc] init];
        
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        NSError *error;
        
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        if (success) {
            NSLog(@"done writing cool.txt");
        }else {
            NSLog(@"writing /tmp/cool.txt failed: %@",[error localizedDescription]);
        }
        
        NSError *readError;
        
        NSString *readStr = [[NSString alloc] initWithContentsOfFile:@"/tmp/cool.txt" encoding:NSASCIIStringEncoding error:&readError];
        
        if (!readStr) {
            NSLog(@"read failed: %@", [readError localizedDescription]);
        } else {
            NSLog(@"resolv.conf looks like this: %@", str);
        }
        
    }
    return 0;
}
