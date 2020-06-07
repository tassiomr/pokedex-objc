//
//  Pokemon.m
//  pokedex-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

- (instancetype)initWithName:(NSString *)name andTypes:(NSArray<NSString *> *)type andBaseStatus:(BaseStatus *)baseStatus {
  if(self = [super init]) {
    _name = name;
    _baseStatus = baseStatus;
    _type = type;
  }
  
  return self;
}

@end
