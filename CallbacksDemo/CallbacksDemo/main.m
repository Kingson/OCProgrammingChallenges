//
//  main.m
//  CallbacksDemo
//
//  Created by Kingson on 6/7/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"
#import "BNRObserver.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        BNRLogger *logger = [[BNRLogger alloc] init];
        
        //Delegate
//        [[NSNotificationCenter defaultCenter] addObserver:logger selector:@selector(zoneChange:) name:NSSystemClockDidChangeNotification object:nil];
        
        //Block
        [[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification object:nil queue:nil usingBlock:^(NSNotification *note){
           NSLog(@"The system time zone has changed!");
        }];
        
        
        NSURL *url = [NSURL URLWithString:@"http://www.duokan.com/reader/www/app.html?id=e7c3f41c56294254ba516ca3fd4ba296"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc]
                                               initWithRequest:request
                                               delegate:logger
                                               startImmediately:YES];
    
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:10.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        
        __unused BNRObserver *observer = [[BNRObserver alloc] init];
        
        [logger addObserver:observer forKeyPath:@"lastTimeString" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
        
        
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
