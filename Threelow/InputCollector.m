//
//  InputCollector.m
//  Threelow
//
//  Created by Wiljay Flores on 2018-08-01.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

+(NSString *) inputForPrompt:(NSString *)promptString{
    
    char userInput[255];
    
    NSLog(@"\n%@",promptString);
    
    fgets(userInput,255,stdin);
    
    NSString *input = [[NSString alloc] initWithCString:userInput encoding:NSUTF8StringEncoding];
    input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
    return input;
    
}

@end
