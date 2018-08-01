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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *d1 = [[Dice alloc] init];
        Dice *d2 = [[Dice alloc] init];
        Dice *d3 = [[Dice alloc] init];
        Dice *d4 = [[Dice alloc] init];
        Dice *d5 = [[Dice alloc] init];
        NSString *command = [[NSString alloc] init];
        
        while(true){
        NSLog(@"%@ %@ %@ %@ %@",d1.roll,d2.roll,d3.roll,d4.roll,d5.roll);
        
        command = [InputCollector inputForPrompt:@"Type a command."];
        
        if ([command isEqualToString:@"roll"]){
            [d1 reRoll];
            [d2 reRoll];
            [d3 reRoll];
            [d4 reRoll];
            [d5 reRoll];
        } else {
            return 0;
        }
    }
    }
    return 0;
}
