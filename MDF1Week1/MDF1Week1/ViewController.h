//
//  ViewController.h
//  MDF1Week1
//
//  Created by Justin Rowe on 3/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate>

{
    IBOutlet UITableView * scheduleTable;
    
    NSMutableArray * universityArray;
}

- (IBAction)editButton:(id)sender;

@end
