//
//  BaseStatus.m
//  pokedex-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import "BaseStatus.h"

@implementation BaseStatus
- (instancetype)initWithHp:(NSInteger *)hp attack:(NSInteger *)attcack defense:(NSInteger *)defense spAttack:(NSInteger *)spAttack spDefense:(NSInteger *)spDefense speed:(NSInteger *)speed {
  if(self = [super init]) {
    _hp = hp;
    _attack = attcack;
    _defense = defense;
    _speed = speed;
    _spAttack = spAttack;
    _spDefense = spDefense;
  }
  
  return self;
}

@end
