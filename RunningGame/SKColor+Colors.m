//
//  SKColor+Colors.m
//  RunningGame
//
//  Created by Michael MacCallum on 3/28/14.
//  Copyright (c) 2014 MacCDevTeam LLC. All rights reserved.
//

#import "SKColor+Colors.h"
@import SpriteKit;

@implementation SKColor (Colors)

+ (SKColor *)_stepTileColor
{
    static NSArray *array = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        array = @[[self peterRiverColor],[self _alizarinColor],[self _emeraldcolor],[self _sunFlowerColor],[self amethystColor],[self turquoiseColor],[self carrotColor],[self _wet_asfault]];
    });
    
    static uint32_t lastRand = 0;
    uint32_t rand = arc4random_uniform((uint32_t)array.count);
    
    while (lastRand == rand) {
        rand = arc4random_uniform((uint32_t)array.count);
    }
    
    lastRand = rand;
    
    return (SKColor *)array[rand];
}

+ (SKColor *)_nonStepTileColor
{
    static SKColor *color = nil;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        color = [SKColor colorWithRed:236.0 / 255.0 green:240.0 / 255.0 blue:241.0 / 255.0 alpha:1.0];
    });
    
    return color;
}

+ (SKColor *) turquoiseColor
{
    static SKColor *color = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        color = [SKColor colorWithRed:26.0 / 255.0 green:188.0 / 255.0 blue:156.0 / 255.0 alpha:1.0];
    });
    
    return color;
}

+ (SKColor *) _emeraldcolor
{
    static SKColor *color = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        color = [SKColor colorWithRed:46.0 / 255.0 green:204.0 / 255.0 blue:113.0 / 255.0 alpha:1.0];
    });
    
    return color;
}

+ (SKColor *) peterRiverColor
{
    static SKColor *color = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        color = [SKColor colorWithRed:52.0 / 255.0 green:152.0 / 255.0 blue:219.0 / 255.0 alpha:1.0];
    });
    
    return color;
}

+ (SKColor *) amethystColor
{
    static SKColor *color = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        color = [SKColor colorWithRed:155.0 / 255.0 green:89.0 / 255.0 blue:182.0 / 255.0 alpha:1.0];
    });
    
    return color;
}

+ (SKColor *) _sunFlowerColor
{
    static SKColor *color = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        color = [SKColor colorWithRed:241.0 / 255.0 green:196.0 / 255.0 blue:15.0 / 255.0 alpha:1.0];
    });
    
    return color;
}

+ (SKColor *) carrotColor
{
    static SKColor *color = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        color = [SKColor colorWithRed:230.0 / 255.0 green:126.0 / 255.0 blue:34.0 / 255.0 alpha:1.0];
    });
    
    return color;
}

+ (SKColor *) _alizarinColor
{
    static SKColor *color = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        color = [SKColor colorWithRed:231.0 / 255.0 green:76.0 / 255.0 blue:60.0 / 255.0 alpha:1.0];
    });
    
    return color;
}

+ (SKColor *) _wet_asfault
{
    static SKColor *color = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        color = [SKColor colorWithRed:52.0 / 255.0 green:73.0 / 255.0 blue:94.0 / 255.0 alpha:1.0];
    });
    
    return color;
}


@end