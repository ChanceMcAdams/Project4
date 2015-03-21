//
//  MovieViewController.h
//  Project 4
//
//  Created by Chance Mcadams on 2/22/15.
//  Copyright (c) 2015 Chance McAdams. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@class MovieInfo;

@interface MovieViewController : UIViewController
{
    IBOutlet UILabel *movieTitleLabel;
    IBOutlet UIView *movieView;
    MPMoviePlayerController *moviePlayer;
}

@property (strong, nonatomic)MovieInfo *currentMovie;

-(IBAction)playMovie:(id)sender;
-(IBAction)stopMovie:(id)sender;

@end
