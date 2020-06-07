//
//  PokedexService.h
//  pokedex-objc
//
//  Created by Tassio Marcos Rocha on 07/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"
#import "BaseStatus.h"

NS_ASSUME_NONNULL_BEGIN

@interface PokedexService : NSObject
-(void) getPokemons: (void (^)(NSMutableArray<Pokemon *> *pokemons)) completion;
@end

NS_ASSUME_NONNULL_END
