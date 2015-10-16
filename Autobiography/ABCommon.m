//
//  ABCommon.m
//  Autobiography
//
//  Created by Abbin on 16/10/15.
//  Copyright © 2015 Abbin. All rights reserved.
//

#import "ABCommon.h"


@implementation ABCommon

+(UIColor*)randomColor{
    NSArray *colorArray = [NSArray arrayWithObjects:color_1,
                           color_2,
                           color_3,
                           color_4,
                           color_5,
                           color_7,
                           color_8,
                           color_9,
                           color_10,
                           color_11,
                           color_12,
                           color_13,
                           color_14,
                           color_15,
                           color_16,
                           color_17,
                           color_18, nil];
    int randNum = rand() % (16 - 0) + 0;
    NSLog(@"%i",randNum);
    return [colorArray objectAtIndex:randNum];
}

@end
