//
//  Dice.h
//  Threelow
//
//  Created by Wiljay Flores on 2018-08-01.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic) NSDictionary *diceValues;
@property (nonatomic) NSArray *keys;
@property (nonatomic) NSString *roll;
@property (nonatomic) NSString *value;
@property (nonatomic) BOOL held;

-(void)reRoll;

@end
