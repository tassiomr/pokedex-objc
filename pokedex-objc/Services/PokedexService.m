//
//  PokedexService.m
//  pokedex-objc
//
//  Created by Tassio Marcos Rocha on 07/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import "PokedexService.h"


@implementation PokedexService
- (void)getPokemons:(void (^)(NSMutableArray<Pokemon *> * _Nonnull))completion {
  NSMutableArray<Pokemon *> *pokemons = [[NSMutableArray alloc] init];
  
  NSString *filePath = [[NSBundle mainBundle] pathForResource:@"pokedex" ofType:@"json"];
  NSError *error;

  NSData *data = [NSData dataWithContentsOfFile:filePath];
  NSArray<NSDictionary *> *fileContents = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
  
  if(error) {
    NSLog(@"%@", [error localizedDescription]);
  } else {


    for(NSDictionary *pokemon in fileContents) {
      
      BaseStatus *base =[[BaseStatus alloc] initWithHp:[[pokemon objectForKey:@"base"] objectForKey:@"HP"] attack:[[pokemon objectForKey:@"base"] objectForKey:@"Attack"] defense:[[pokemon objectForKey:@"base"] objectForKey:@"Defense"] spAttack:[[pokemon objectForKey:@"base"] objectForKey:@"Sp. Attack"] spDefense:[[pokemon objectForKey:@"base"] objectForKey:@"Sp. Defense"] speed:[[pokemon objectForKey:@"base"] objectForKey:@"Speed"]];
      
      Pokemon *poke = [[Pokemon alloc] initWithName:[[pokemon objectForKey:@"name"] objectForKey:@"english"] andTypes:pokemon[@"type"] andBaseStatus:base uuid:[pokemon objectForKey:@"id"]];
      [pokemons addObject:poke];
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
      completion(pokemons);
    });
  }
}
@end
