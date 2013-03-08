//
//  CustomTableCell.m
//  MDF1Week1
//
//  Created by Justin Rowe on 3/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "CustomTableCell.h"
#import "TeamViewController.h"

@implementation CustomTableCell

@synthesize universityLabel, mascotLabel, mascotImage;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
