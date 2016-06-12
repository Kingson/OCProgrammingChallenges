//
//  BNRAppliance.m
//  AppliancesDemo
//
//  Created by Kingson on 6/12/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype)init
{
    return [self initWithProductName:@"UnKnown"];
}

- (instancetype)initWithProductName:(NSString *)pn
{
    self = [super init];
    
    if (self) {
        _voltage = 120;
        
        _productName = [pn copy];
    }
    
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", _productName, self.voltage];
}

- (void)setVoltage:(int)x
{
    NSLog(@"setting voltage to %d", _voltage);
    _voltage = x;
}

@end
