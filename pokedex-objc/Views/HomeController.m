//
//  ViewController.m
//  pokedex-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import "HomeController.h"

@interface HomeController ()

@end

@implementation HomeController


- (void)viewDidLoad {
  [super viewDidLoad];
  self.tableView = UITableView.new;
  self.safeArea = self.view.layoutMarginsGuide;
  [self setupTableView];
  [[self navigationItem] setTitle:@"Pokedex"];
  [[[self navigationController] navigationBar] setPrefersLargeTitles:TRUE];
  
  
  // Do any additional setup after loading the view.
}

-(void) setupTableView {
  [[self tableView] setDataSource:self];
  [[self tableView] setDelegate:self];
  [[self view] addSubview:self.tableView];
  self.tableView.translatesAutoresizingMaskIntoConstraints = false;
  [[[self tableView] topAnchor] constraintEqualToAnchor:self.view.topAnchor].active = TRUE;
  [[[self tableView] bottomAnchor] constraintEqualToAnchor:self.view.bottomAnchor].active = TRUE;
  [[[self tableView] trailingAnchor] constraintEqualToAnchor:self.view.trailingAnchor].active = TRUE;
  [[[self tableView] leadingAnchor] constraintEqualToAnchor:self.view.leadingAnchor].active = TRUE;
  [[self tableView] registerClass:UITableViewCell.self forCellReuseIdentifier:@"cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
  UITableViewCell *cell = [[self tableView] dequeueReusableCellWithIdentifier:@"cell" forIndexPath: indexPath];
  
  cell.textLabel.text = @"POKEMOM GOLDEN SKY";
  return cell;
}

@end
