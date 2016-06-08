//
//  main.m
//  BMITimeDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRPerson.h"
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        BNRPerson *mikey = [[BNRPerson alloc] init];
        BNREmployee *mikey = [[BNREmployee alloc] init];
        
         // 使用setter方法为实例变量赋值
        [mikey setHeightInMeters:1.7];
        [mikey setWeightInKilos:96];
        
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
        NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
        
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
        
        
        
        
        //创建一组数组， 用来包含多个BNREmployee对象
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            //创建BNREmployee实例
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            //为实例变量赋值
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i / 10.0;
            mikey.employeeID = i;
            
            //将新创建的BNREmployee实例加入数组
            [employees addObject:mikey];
            
            if (i == 0) {
                [executives setObject:mikey forKey:@"CEO"];
            }
            
            if (i == 1) {
                [executives setObject:mikey forKey:@"CTO"];
            }
    
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            //为BNRAsset对象设置合适的标签
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            // 生成0至9之间的随机整数（包含0和9）
            NSUInteger randomIndex = random() % [employees count];
            
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        [employees sortUsingDescriptors:@[voa, eid]];
        
        // 输出整个NSMutableArray对象
        NSLog(@"executives: %@", executives);
        // 输出CEO的信息
        NSLog(@"CEO: %@", executives[@"CEO"]);
        
        executives = nil;
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 700"];
        
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        
        toBeReclaimed = nil;
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");

        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets:%@", allAssets);
        
        NSLog(@"Giving up ownership of arrays");
        
        employees = nil;
        
        allAssets = nil;
        
        
    }
    return 0;
}
