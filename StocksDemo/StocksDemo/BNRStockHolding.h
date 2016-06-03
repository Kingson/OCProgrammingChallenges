//
//  BNRStockHolding.h
//  StocksDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)price;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)price;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)number;
- (float)costInDollars;
- (float)valueInDollars;

@end
