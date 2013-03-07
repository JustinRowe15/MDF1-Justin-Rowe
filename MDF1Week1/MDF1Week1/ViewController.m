//
//  ViewController.m
//  MDF1Week1
//
//  Created by Justin Rowe on 3/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    universityArray = [[NSMutableArray alloc] initWithObjects:@"Davidson", @"UIC", @"George Mason", @"Connecticut", @"Idaho", @"Portland", @"Mercer", @"Indiana State", @"USC", @"Valparaiso", @"New Mexico State", @"South Dakota State", @"Cincinnati", @"Saint Louis", @"UNLV", @"Fresno State", @"Boise State", @"Colorado State", @"San Diego State", @"Wyoming", nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return [universityArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    static NSString * scheduleIdentifier = @"Cell";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:scheduleIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:scheduleIdentifier];
    }
    
    cell.textLabel.text = (NSString*)[universityArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
}

@end
