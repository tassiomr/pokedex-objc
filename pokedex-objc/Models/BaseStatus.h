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

@property (nonatomic, nonnull) NSInteger *hp;
@property (nonatomic, nonnull) NSInteger *attack;
@property (nonatomic, nonnull) NSInteger *defense;
@property (nonatomic, nonnull) NSInteger *spAttack;
@property (nonatomic, nonnull) NSInteger *spDefense;
@property (nonatomic, nonnull) NSInteger *speed;

-(instancetype) initWithHp: (NSInteger *) hp attack: (NSInteger *) attcack defense: (NSInteger *) defense spAttack: (NSInteger *) spAttack spDefense: (NSInteger *) spDefense speed: (NSInteger *) speed;

@end

NS_ASSUME_NONNULL_END


//
//"base": {
//  "HP": 45,
//  "Attack": 49,
//  "Defense": 49,
//  "Sp. Attack": 65,
//  "Sp. Defense": 65,
//  "Speed": 45
//}
