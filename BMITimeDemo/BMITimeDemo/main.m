//
//  main.m
//  BMITimeDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        BNRPerson *mikey = [[BNRPerson alloc] init];
        
         // 使用setter方法为实例变量赋值
        [mikey setHeightInMeters:1.7];
        [mikey setWeightInKilos:96];
        
        // 使用getter方法打印出实例变量的值
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        
        // 使用定制方法打印出bmi的值
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey has a BMI of %f", bmi);
        
        //点语法
        mikey.heightInMeters = 2.0;
        mikey.weightInKilos = 9;
        
        float mikeyHeight = mikey.heightInMeters;
        int mikeyWeight = mikey.weightInKilos;
        
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", mikeyHeight, mikeyWeight);
        
        NSLog(@"sss:%f", mikey.bodyMassIndex);
        
        NSMutableArray *testArray = [NSMutableArray array];
        
        [mikey addYourselfToArray:testArray];
        
        NSLog(@"print testArray: %@", testArray);
        
    }
    return 0;
}
