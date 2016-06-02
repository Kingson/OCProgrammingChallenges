//
//  main.c
//  ifelseDemo
//
//  Created by Kingson on 6/1/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int i = 20;
    int j = 25;
    int k = ( i > j ) ? 10 : 5;
    if ( 5 < j - k ) {
        // 第一个表达式
        printf("The first expression is true.\n");
    } else if ( j > i ) {
        // 第二个表达式
        printf("The second expression is true.");
    } else {
        printf("Neither expression is true.");
    }
    return 0;
}
