//
//  BNRAppliance.h
//  AppliancesDemo
//
//  Created by Kingson on 6/12/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject
{
    NSString *_productName;
}

//@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;

- (instancetype)initWithProductName:(NSString *)pn;

@end

