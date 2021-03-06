//
//  MainSceneBaseClass.m
//  TapTheColoredTile
//
//  Created by Michael MacCallum on 4/12/14.
//  Copyright (c) 2014 MacCDevTeam LLC. All rights reserved.
//

#import "MainSceneBaseClass.h"
#import "SKColor+Colors.h"

@implementation MainSceneBaseClass

- (instancetype)initWithSize:(CGSize)size
{
    self = [super initWithSize:size];

    if (self) {
        [self setBackgroundColor:[SKColor _nonStepTileColor]];

        self.titleLabel = [[SKLabelNode alloc] initWithFontNamed:xxFileNameComicSansNeueFont];
        [self.titleLabel setPosition:CGPointMake(size.width / 2.0, size.height - 60.0)];
        [self.titleLabel setHorizontalAlignmentMode:SKLabelHorizontalAlignmentModeCenter];
        [self.titleLabel setVerticalAlignmentMode:SKLabelVerticalAlignmentModeCenter];
        [self.titleLabel setFontColor:[SKColor _stepTileColor]];
        [self.titleLabel setFontSize:34.0];
        [self addChild:self.titleLabel];

        self.subTitleLabel = [[SKLabelNode alloc] initWithFontNamed:xxFileNameComicSansNeueFont];
        [self.subTitleLabel setPosition:CGPointMake(size.width / 2.0, size.height - 90.0)];
        [self.subTitleLabel setHorizontalAlignmentMode:SKLabelHorizontalAlignmentModeCenter];
        [self.subTitleLabel setVerticalAlignmentMode:SKLabelVerticalAlignmentModeCenter];
        [self.subTitleLabel setFontColor:[SKColor _stepTileColor]];
        [self.subTitleLabel setFontSize:18.0];
        [self addChild:self.subTitleLabel];
    }

    return self;
}

@end
