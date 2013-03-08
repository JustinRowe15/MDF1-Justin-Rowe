//
//  ViewController.h
//  MDF1Week1
//
//  Created by Justin Rowe on 3/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableCell.h"
#import "TeamViewController.h"

@interface ViewController : UIViewController <UITableViewDelegate>

{
    IBOutlet UITableView * scheduleTable;
    NSMutableArray * universityArray;
    NSMutableArray * mascotArray;
    NSMutableArray * photosArray;
}

- (IBAction)editButton:(id)sender;

@end
