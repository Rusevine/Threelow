//
//  GameController.h
//  Threelow
//
//  Created by Wiljay Flores on 2018-08-01.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *diceArray;

-(void)displayDice;
-(void)reRollAllDice;
-(void)holdDie:(int)index;

@end
