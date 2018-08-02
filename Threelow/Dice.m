//
//  Dice.m
//  Threelow
//
//  Created by Wiljay Flores on 2018-08-01.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(instancetype) init {
    if(self = [super init]){
        _diceValues = @[@"⚀",@"⚁",@"⚂",@"⚃",@"⚄",@"⚅"];
        _roll = [_diceValues objectAtIndex:(arc4random_uniform(6))];
        _held = false;
    }
    return self;
}

-(void)reRoll{
    self.roll = [_diceValues objectAtIndex:(arc4random_uniform(6))];
}

@end
