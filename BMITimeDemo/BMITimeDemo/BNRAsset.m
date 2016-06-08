//
//  BNRAsset.m
//  BMITimeDemo
//
//  Created by Kingson on 6/7/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
//    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assighed to %@>", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", self.label, self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
