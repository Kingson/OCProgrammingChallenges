//
//  BNRForeignStockHolding.m
//  StocksDemo
//
//  Created by Kingson on 6/7/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars
{
    return _purchaseSharePrice * _numberOfShares * _conversionRate;
}

- (float)valueInDollars
{
    return _currentSharePrice * _numberOfShares * _conversionRate;
}

@end
