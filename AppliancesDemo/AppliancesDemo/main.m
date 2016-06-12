//
//  main.m
//  AppliancesDemo
//
//  Created by Kingson on 6/12/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        BNRAppliance *a = [[BNRAppliance alloc] init];
        NSLog(@"a is %@", a);
        
//        [a setProductName:@"Washing Machine"];
        [a setValue:@"Washing Machine" forKey:@"productName"];
//        [a setVoltage:240];
        [a setValue:[NSNumber numberWithInt:240] forKey:@"voltage"];
        NSLog(@"a is %@", a);
        
        NSLog(@"the product name is %@", [a valueForKey:@"productName"]);
    }
    return 0;
}
