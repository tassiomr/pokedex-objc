//
//  BaseStatus.h
//  pokedex-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseStatus : NSObject

@property (nonatomic) long hp;
@property (nonatomic) long attack;
@property (nonatomic) long defense;
@property (nonatomic) long spAttack;
@property (nonatomic) long spDefense;
@property (nonatomic) long speed;

-(instancetype) initWithHp: (long) hp attack: (long) attcack defense: (long) defense spAttack: (long) spAttack spDefense: (long) spDefense speed: (long) speed;

@end

NS_ASSUME_NONNULL_END
