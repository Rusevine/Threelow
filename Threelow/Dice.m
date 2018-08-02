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
        _diceValues = [[NSDictionary alloc] initWithObjects:@[@1,@2,@0,@4,@5,@6] forKeys:@[@"⚀",@"⚁",@"⚂",@"⚃",@"⚄",@"⚅"]];
        _keys = @[@"⚀",@"⚁",@"⚂",@"⚃",@"⚄",@"⚅"];
        _roll = [_keys objectAtIndex:(arc4random_uniform(6))];
        _value = [_diceValues objectForKey:_roll];
        _held = false;
    }
    return self;
}

-(void)reRoll{
    self.roll = [self.keys objectAtIndex:(arc4random_uniform(6))];
    self.value = [self.diceValues objectForKey:self.roll];
}

@end
