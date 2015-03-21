//
//  CustomTableViewCell.h
//  Project 4
//
//  Created by Chance Mcadams on 2/22/15.
//  Copyright (c) 2015 Chance McAdams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (strong, nonatomic)IBOutlet UILabel *movietitle;
@property (strong, nonatomic)IBOutlet UILabel *showtimes;
@property (strong, nonatomic)IBOutlet UIImageView *movieImageView;

@end
