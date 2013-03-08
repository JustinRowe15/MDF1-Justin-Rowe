//
//  ViewController.m
//  MDF1Week1
//
//  Created by Justin Rowe on 3/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h"
#import "TeamViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    universityArray = [[NSMutableArray alloc] initWithObjects:@"Davidson", @"UIC", @"George Mason", @"Connecticut", @"Idaho", @"Portland", @"Mercer", @"Indiana State", @"USC", @"Valparaiso", @"New Mexico State", @"South Dakota State", @"Cincinnati", @"Saint Louis", @"UNLV", @"Fresno State", @"Boise State", @"Colorado State", @"San Diego State", @"Wyoming", @"Nevada", @"Air Force", nil];
    
    mascotArray = [[NSMutableArray alloc] initWithObjects:@"Wildcats", @"Flames", @"Patriots", @"Huskies", @"Vandals", @"Pilots", @"Bears", @"Sycamores", @"Trojans", @"Crusaders", @"Aggies", @"Jackrabbits", @"Bearcats", @"Billikens", @"Rebels", @"Bulldogs", @"Broncos", @"Rams", @"Aztecs", @"Cowboys", @"Wolf Pack", @"Falcons", nil];
    
    photosArray = [[NSMutableArray alloc] initWithObjects:@"davidson.png", @"UIC.png", @"mason.png", @"uconn.png", @"idaho.png", @"portland.png", @"mercer.png", @"indianastate.png", @"usc.png", @"valpo.png", @"nmsu.png", @"southdakota.png", @"cincinnati.png", @"billiken_blue.png", @"unlv.png", @"fresno.png", @"boise.png", @"coloradostate.png", @"aztecs.png", @"wyoming.png", @"nevada.png", @"airforce.png", nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//Editing Mode will need to be set to True in order to add/delete functions can be run
/* - (void)viewDidAppear:(BOOL)animated;
{
    [scheduleTable setEditing:true];
    [super viewDidAppear:animated];
} */

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)editButton:(id)sender
{
    UIButton * editScheduleButton = (UIButton *)sender;
    if (editScheduleButton != nil)
    {
        if ([scheduleTable isEditing])
        {
            [scheduleTable setEditing:false];
            [editScheduleButton setTitle:@"Edit Schedule" forState:UIControlStateNormal];
        }
        else
        {
            [scheduleTable setEditing:true];
            [editScheduleButton setTitle:@"Done Editing Schedule" forState:UIControlStateNormal];
        }
    }
}

//Number of rows listed from the total number of the Array
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return [universityArray count];
    return [mascotArray count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

//Allowing the array to have rows deleted
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return UITableViewCellEditingStyleDelete;
}

//Delete mode button action
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath;
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        //removes object from array
        [universityArray removeObjectAtIndex:indexPath.row];
        [mascotArray removeObjectAtIndex:indexPath.row];
        [scheduleTable deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert)
    {
        //adding object to array
        [universityArray insertObject:@"University" atIndex:indexPath.row];
        [mascotArray insertObject:@"Mascot" atIndex:indexPath.row];
        [scheduleTable insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    static NSString * scheduleIdentifier = @"Cell";
    
    CustomTableCell * cell = [tableView dequeueReusableCellWithIdentifier:scheduleIdentifier];
    if (cell == nil)
    {
        //cell = [[CustomTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:scheduleIdentifier];
        
        NSArray * views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        
        for (UIView * view in views)
        {
            if ([view isKindOfClass:[CustomTableCell class]])
            {
                cell = (CustomTableCell *)view;
                
                UIImage * image = [UIImage imageNamed:[photosArray objectAtIndex:indexPath.row]];
                cell.imageView.image = image;
                cell.universityLabel.text = [universityArray objectAtIndex:indexPath.row];
                cell.mascotLabel.text = [mascotArray objectAtIndex:indexPath.row];
            }
        }
    }
    
    return cell;
}

@end
