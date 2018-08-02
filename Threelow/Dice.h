//
//  Dice.h
//  Threelow
//
//  Created by Wiljay Flores on 2018-08-01.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) NSArray *diceValues;
@property (nonatomic) NSString *roll;
@property (nonatomic) BOOL held;

-(void)reRoll;

@end
