//
//  DetailViewController.h
//  Project 4
//
//  Created by Chance Mcadams on 2/22/15.
//  Copyright (c) 2015 Chance McAdams. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MovieInfo;

@interface DetailViewController : UIViewController
{
    IBOutlet UILabel *movieTitleLabel;
    IBOutlet UILabel *showtimeLabel;
    IBOutlet UIImageView *movieImageView;
}

@property (strong, nonatomic)MovieInfo *selectedMovie;

-(IBAction)playMovie:(id)sender;

@end
