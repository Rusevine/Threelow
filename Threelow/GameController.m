//
//  GameController.m
//  Threelow
//
//  Created by Wiljay Flores on 2018-08-01.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "GameController.h"

@implementation GameController

-(instancetype) init {
    if(self = [super init]){
        _diceArray = [[NSMutableArray alloc] init];
        Dice *d1 = [[Dice alloc] init];
        Dice *d2 = [[Dice alloc] init];
        Dice *d3 = [[Dice alloc] init];
        Dice *d4 = [[Dice alloc] init];
        Dice *d5 = [[Dice alloc] init];
        [_diceArray addObjectsFromArray:@[d1,d2,d3,d4,d5]];

    }
    return self;
}

-(void)displayDice{
    int i = 0;
    for (Dice* die in _diceArray) {
        i++;
        if (die.held == false){
            NSLog(@"%d: %@ %@",i,die.roll,die.value);
        } else {
            NSLog(@"[%d]: %@ %@",i,die.roll, die.value);
        }
    }
    NSLog(@"Score: %ld",[self score]);
}

-(void)reRollAllDice {
    for (Dice* die in _diceArray) {
        if(die.held == false){
        [die reRoll];
        }
    }
}

-(void)holdDie:(int)index{
    Dice *die = [self.diceArray objectAtIndex:(index-1)];
    if (die.held == true) {
        die.held = false;
    } else {
        die.held = true;
    }
}

-(void)resetDice{
    for (Dice* die in _diceArray) {
        die.held = false;
    }
}

-(NSInteger)score {
    NSInteger score = 0;
    for (Dice* die in _diceArray) {
        if(die.held == true){
        score += [die.value integerValue];
        }
    }
    return score;
}
@end
