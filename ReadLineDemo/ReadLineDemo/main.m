//
//  main.m
//  ReadLineDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int i = 17;
        int *addressOfI = &i;
        printf("i stores its value at %p\n", addressOfI);
        printf("this function starts at %p\n", main);
        printf("the int stored at addressOfI is %d\n", *addressOfI);
        
        *addressOfI = 89;
        printf("Now i is %d\n", i);
        
        printf("An int is %zu bytes\n", sizeof(i));
        printf("A pointer is %zu bytes\n", sizeof(addressOfI));
        printf("An int is %zu bytes\n", sizeof(float));
        
        char *name = readline(NULL);
        NSString *scanName = [NSString stringWithUTF8String:name];
        NSLog(@"name is %@", scanName);
    }
    return 0;
}
