//
//  main.m
//  Threelow
//
//  Created by Wiljay Flores on 2018-08-01.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = true;
        NSString *command = [[NSString alloc] init];
        NSString *hold = [[NSString alloc] init];
        GameController *game = [[GameController alloc] init];
        
        
        while(gameOn){
        
        [game displayDice];
        
        command = [InputCollector inputForPrompt:@"Type a command."];
        
            if ([command isEqualToString:@"roll"]){
                [game reRollAllDice];
            } else if ([command isEqualToString:@"hold"]){
                hold = [InputCollector inputForPrompt:@"Enter a dice to hold."];
                [game holdDie:[hold intValue]];
            } else if ([command isEqualToString:@"reset"]){
                [game resetDice];
            } else if ([command isEqualToString:@"quit"]){
                gameOn = false;
                continue;
            } else {
                NSLog(@"Invalid command. Try again.");
            }
        }
    }
    return 0;
}
