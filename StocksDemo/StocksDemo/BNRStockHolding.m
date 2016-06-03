//
//  BNRStockHolding.m
//  StocksDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding
- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)price
{
    _purchaseSharePrice = price;
}

- (float)currentSharePrice
{
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)price
{
    _currentSharePrice = price;
}

- (int)numberOfShares
{
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)number
{
    _numberOfShares = number;
}

- (float)costInDollars
{
    return _purchaseSharePrice * _numberOfShares;
}

- (float)valueInDollars
{
    return _currentSharePrice * _numberOfShares;
}
@end
