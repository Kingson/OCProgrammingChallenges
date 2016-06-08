//
//  main.m
//  ConstantsDemo
//
//  Created by Kingson on 6/7/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"\u03c0 is %f", M_PI);
        
        NSLog(@"%d is larger", MAX(10, 12));
        
        NSLocale *here = [NSLocale currentLocale];
        
        NSString *cuurrency = [here objectForKey:NSLocaleCurrencyCode];
        
        NSLog(@"Money is %@", cuurrency);
    }
    return 0;
}
