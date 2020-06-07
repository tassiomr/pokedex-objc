//
//  Pokemon.h
//  pokedex-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseStatus.h"

NS_ASSUME_NONNULL_BEGIN

@interface Pokemon : NSObject
@property (nonatomic, nonnull) NSString *uuid;
@property (nonatomic, nonnull) NSString *name;
@property (nonatomic, nonnull) NSArray<NSString *> *type;
@property (nonatomic, nonnull) BaseStatus *baseStatus;

-(instancetype) initWithName: (NSString *) name andTypes: (NSArray<NSString *> *) type andBaseStatus: (BaseStatus *) baseStatus uuid: (NSString *) uuid;

@end

NS_ASSUME_NONNULL_END
