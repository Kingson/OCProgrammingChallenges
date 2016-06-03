//
//  BNRPerson.h
//  BMITimeDemo
//
//  Created by Kingson on 6/3/16.
//  Copyright © 2016 Kingson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject
{
    float _heightInMeters;
    int _weightInKilos;
}

- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;
- (float)bodyMassIndex;
- (void)addYourselfToArray:(NSMutableArray *)theArray;

@end
