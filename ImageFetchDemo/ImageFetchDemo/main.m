//
//  main.m
//  ImageFetchDemo
//
//  Created by Kingson on 6/7/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *requst = [NSURLRequest requestWithURL:url];
        
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:requst returningResponse:NULL error:&error];
        
        if (!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);            return 1;
        }
        
        NSLog(@"The file is %lu bytes", (unsigned long)[data length]);
        
        BOOL written = [data writeToFile:@"/tmp/google.png"
                                 options:NSDataWritingAtomic
                                   error:&error];
        
        if (!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        
        NSLog(@"The file read from the disk has %lu bytes", (unsigned long)[readData length]);
        
        NSLog(@"Success!");
        
        NSArray *desktops = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        
        NSString *desktopPath = desktops[0];
        
        NSLog(@"desktop Path is %@", desktopPath);
    }
    return 0;
}
