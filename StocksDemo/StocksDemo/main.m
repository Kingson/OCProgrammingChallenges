//
//  main.m
//  StocksDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
        stock1.purchaseSharePrice = 2.30;
        stock1.currentSharePrice = 4.50;
        stock1.numberOfShares = 40;
        
        NSLog(@"stock1 cost:%f\n, stock1 value:%f", [stock1 costInDollars], [stock1 valueInDollars]);
        
        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        stock2.purchaseSharePrice = 12.19;
        stock2.currentSharePrice = 10.56;
        stock2.numberOfShares = 90;
        
        NSLog(@"stock2 cost:%f\n, stock2 value:%f", [stock2 costInDollars], [stock2 valueInDollars]);
        
        BNRStockHolding *stock3 = [[BNRStockHolding alloc] init];
        stock3.purchaseSharePrice = 45.10;
        stock3.currentSharePrice = 49.51;
        stock3.numberOfShares = 210;
        
        NSLog(@"stock3 cost:%f\n, stock3 value:%f", [stock3 costInDollars], [stock3 valueInDollars]);
        
        BNRForeignStockHolding *foreignStock = [[BNRForeignStockHolding alloc] init];
        foreignStock.purchaseSharePrice = 23.4;
        foreignStock.currentSharePrice = 34.2;
        foreignStock.numberOfShares = 100;
        foreignStock.conversionRate = 2.4;
        
        NSLog(@"foreignStock cost:%f\n, foreignStock value:%f", [foreignStock costInDollars], [foreignStock valueInDollars]);
        
        NSMutableArray *stocksArray = [[NSMutableArray alloc] initWithObjects:stock1, stock2, stock3, foreignStock, nil];
        
        for (BNRStockHolding *stock in stocksArray) {
            NSLog(@"stock %@", stock);
        }
    }
    return 0;
}
