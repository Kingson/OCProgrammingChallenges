//
//  main.m
//  NSHostDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSHost *host = [NSHost currentHost];
        NSString *hostLocalizedName = [host localizedName];
        NSString *hostName = [host name];
        NSArray *hostNames = [host names];
        NSLog(@"hostLocalizedName is %@", hostLocalizedName);
        NSLog(@"hostName is %@", hostName);
        NSLog(@"hostNames is %@", hostNames);
    }
    return 0;
}
