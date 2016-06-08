//
//  BNREmployee.h
//  BMITimeDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson
{
//    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int offAlarmCode;
@property (nonatomic) NSDate *hireDate;
//@property (nonatomic, copy) NSArray *assets;
@property (nonatomic, copy) NSSet *assets;

- (double)yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
