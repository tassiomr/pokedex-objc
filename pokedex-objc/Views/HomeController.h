//
//  ViewController.h
//  pokedex-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, nonnull) UITableView *tableView;
@end
