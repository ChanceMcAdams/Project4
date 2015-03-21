//
//  MovieViewController.m
//  Project 4
//
//  Created by Chance Mcadams on 2/22/15.
//  Copyright (c) 2015 Chance McAdams. All rights reserved.
//

#import "MovieViewController.h"
#import "MovieInfo.h"
#import <MediaPlayer/MediaPlayer.h>

@interface MovieViewController ()

@end

@implementation MovieViewController

- (void)viewDidLoad {
    
    movieTitleLabel.text = self.currentMovie.movieTitle;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)playMovie:(id)sender {
    
    //Movie url - Sample movie
    NSURL *movieURL = [NSURL URLWithString:@"http://clips.vorwaerts-gmbh.de/VfE_html5.mp4"];
    
    //Create moviePlayer
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
    if(moviePlayer != nil) {
        
        //Add movie to view
        [movieView addSubview:moviePlayer.view];
        
        //Set movie properties
        moviePlayer.fullscreen = false;
        moviePlayer.controlStyle = MPMovieControlStyleNone;
        moviePlayer.view.frame = CGRectMake(0.0f, 0.0f, movieView.frame.size.width, movieView.frame.size.height);
        
        //Play movie
        [moviePlayer play];
    }
}

-(IBAction)stopMovie:(id)sender {
    [moviePlayer stop];
}

@end
