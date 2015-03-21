//
//  DetailViewController.m
//  Project 4
//
//  Created by Chance Mcadams on 2/22/15.
//  Copyright (c) 2015 Chance McAdams. All rights reserved.
//

#import "DetailViewController.h"
#import "MovieViewController.h"
#import "MovieInfo.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    
    movieTitleLabel.text = self.selectedMovie.movieTitle;
    showtimeLabel.text = self.selectedMovie.showtimes;
    movieImageView.image = self.selectedMovie.movieImage;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    MovieViewController *movieVC = segue.destinationViewController;
    if(movieVC != nil) {
        if([segue.identifier isEqualToString:@"movieSegue"]) {
            movieVC.currentMovie = self.selectedMovie;
        }
    }
}

-(IBAction)playMovie:(id)sender {
    
}

@end
