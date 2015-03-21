//
//  ViewController.m
//  Project 4
//
//  Created by Chance Mcadams on 2/22/15.
//  Copyright (c) 2015 Chance McAdams. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "CustomTableViewCell.h"
#import "TheaterInfo.h"
#import "MovieInfo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createTheaters];
    [self createMovies];
    
    //Add movies to theaters
    carmikeTheater.theaterMovies = @[americanSniper, bigHero6, birdman, boyhood, equalizer];
    hollywoodTheater.theaterMovies = @[fiftyShades, fury, goneGirl, horribleBosses, hotTub];
    reagalTheater.theaterMovies = @[imitationGame, johnWick, juipter, kingsman, fellowshipOfTheRing];
    timeSquareTheater.theaterMovies = @[returnOfTheKing, twoTowers, lucy, nightcrawler, projectAlmanac];
    centralTheater.theaterMovies = @[seventhSon, spongebob, newHope, phantomMenace, treehouse];
    
    //Add theaters to array
    theaterArray = [NSArray arrayWithObjects:carmikeTheater, hollywoodTheater, reagalTheater, timeSquareTheater, centralTheater, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView Methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return theaterArray.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    TheaterInfo *currentTheater = [theaterArray objectAtIndex:section];
    return currentTheater.theaterMovies.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TheaterInfo *currentTheater = [theaterArray objectAtIndex:indexPath.section];
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableCell"];
    if(cell != nil) {
        MovieInfo *currentMovie = [currentTheater.theaterMovies objectAtIndex:indexPath.row];
        cell.movietitle.text = currentMovie.movieTitle;
        cell.showtimes.text = currentMovie.showtimes;
        cell.movieImageView.image = currentMovie.movieImage;
    }
    
    return cell;
}

#pragma mark - Header Methods

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    TheaterInfo *currentTheater = [theaterArray objectAtIndex:section];
    return [NSString stringWithFormat:@"%@ - %@",currentTheater.theaterName, currentTheater.theaterLocation];
}

#pragma mark - Segue Methods

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewController *detailVC = segue.destinationViewController;
    if(detailVC != nil) {
        CustomTableViewCell *cell = (CustomTableViewCell*)sender;
        NSIndexPath *indexPath = [movieTableView indexPathForCell:cell];
        
        TheaterInfo *selectedTheater = [theaterArray objectAtIndex:indexPath.section];
        MovieInfo *selectedmovie = [selectedTheater.theaterMovies objectAtIndex:indexPath.row];
        
        if([segue.identifier isEqualToString:@"showDetailSegue"]) {
            detailVC.selectedMovie = selectedmovie;
        }
    }
}

#pragma mark - Theater Creation

-(void)createTheaters {
    
    //Create Theaters
    carmikeTheater = [[TheaterInfo alloc] initWithTitle:@"Carmike Theater" location:@"Tyler, TX"];
    hollywoodTheater = [[TheaterInfo alloc] initWithTitle:@"Hollywood Theater" location:@"Tyler, TX"];
    reagalTheater = [[TheaterInfo alloc] initWithTitle:@"Reagal Movie Theater" location:@"Tyler, TX"];
    timeSquareTheater = [[TheaterInfo alloc] initWithTitle:@"Times Square Theater" location:@"Tyler, TX"];
    centralTheater = [[TheaterInfo alloc] initWithTitle:@"Central Theater" location:@"Tyler, TX"];
}

-(void)createMovies {
    americanSniper = [[MovieInfo alloc] initWithTitle:@"American Sniper" showtimes:@"10AM | 11:15AM | 1:30PM" movieImage:[UIImage imageNamed:@"american_sniper.jpg"]];
    bigHero6 = [[MovieInfo alloc] initWithTitle:@"Big Hero 6" showtimes:@"9:30AM | 10:05AM | 11:30AM" movieImage:[UIImage imageNamed:@"big_hero_6.jpg"]];
    birdman = [[MovieInfo alloc] initWithTitle:@"Birdman" showtimes:@"12PM | 1:45AM | 3:30PM" movieImage:[UIImage imageNamed:@"birdman.jpg"]];
    boyhood = [[MovieInfo alloc] initWithTitle:@"Boyhood" showtimes:@"10:30AM | 12:15PM | 4:25PM" movieImage:[UIImage imageNamed:@"boyhood.jpg"]];
    equalizer = [[MovieInfo alloc] initWithTitle:@"Equalizer" showtimes:@"11AM | 12:50AM | 2:15PM" movieImage:[UIImage imageNamed:@"equalizer.jpg"]];
    fiftyShades = [[MovieInfo alloc] initWithTitle:@"Fifty Shades of Grey" showtimes:@"10AM | 11AM | 12PM" movieImage:[UIImage imageNamed:@"fifty_shades.jpg"]];
    fury = [[MovieInfo alloc] initWithTitle:@"Fury" showtimes:@"10:30AM | 11:20AM | 12:45PM" movieImage:[UIImage imageNamed:@"fury.jpg"]];
    goneGirl = [[MovieInfo alloc] initWithTitle:@"Gone Girl" showtimes:@"12PM | 1:45AM | 3:15PM" movieImage:[UIImage imageNamed:@"gone_girl.jpg"]];
    horribleBosses = [[MovieInfo alloc] initWithTitle:@"Horrible Bosses 2" showtimes:@"2:30PM | 3:25PM | 4:15PM" movieImage:[UIImage imageNamed:@"horrible_bosses_2.jpg"]];
    hotTub = [[MovieInfo alloc] initWithTitle:@"Hot Tub Time Machine 2" showtimes:@"11:30AM | 12:30PM | 2:15PM" movieImage:[UIImage imageNamed:@"hot_tub.jpg"]];
    imitationGame = [[MovieInfo alloc] initWithTitle:@"The Imitation Game" showtimes:@"12:15PM | 12:45PM | 1:45PM" movieImage:[UIImage imageNamed:@"imitation_game.jpg"]];
    johnWick = [[MovieInfo alloc] initWithTitle:@"John Wick" showtimes:@"10AM | 11:15AM | 1:30" movieImage:[UIImage imageNamed:@"john_wick.jpg"]];
    juipter = [[MovieInfo alloc] initWithTitle:@"Jupiter Ascending" showtimes:@"12:15PM | 2:45PM | 4PM" movieImage:[UIImage imageNamed:@"jupiter.jpg"]];
    kingsman = [[MovieInfo alloc] initWithTitle:@"Kingsman: The Secret Service" showtimes:@"2PM | 2:45PM | 3:30PM" movieImage:[UIImage imageNamed:@"kingsman.jpg"]];
    fellowshipOfTheRing = [[MovieInfo alloc] initWithTitle:@"Lord of the Rings: Fellowship of the Ring" showtimes:@"11AM | 11:15AM | 12PM" movieImage:[UIImage imageNamed:@"lotr_fellowship.jpg"]];
    returnOfTheKing = [[MovieInfo alloc] initWithTitle:@"Lord of the Rings: Return of the King" showtimes:@"4PM | 4:15PM | 5:30PM" movieImage:[UIImage imageNamed:@"lotr_return.jpg"]];
    twoTowers = [[MovieInfo alloc] initWithTitle:@"Lord of the Rings: The Two Towers" showtimes:@"12PM | 12:15PM | 5:30PM" movieImage:[UIImage imageNamed:@"lotr_towers.jpg"]];
    lucy = [[MovieInfo alloc] initWithTitle:@"Lucy" showtimes:@"6PM | 6:15PM | 7PM" movieImage:[UIImage imageNamed:@"lucy.jpg"]];
    nightcrawler = [[MovieInfo alloc] initWithTitle:@"Nightcrawler" showtimes:@"5PM | 6:30PM | 8:30PM" movieImage:[UIImage imageNamed:@"nightcrawler.jpg"]];
    projectAlmanac = [[MovieInfo alloc] initWithTitle:@"Project Almanac" showtimes:@"4:45PM | 5:15PM | 6:30PM" movieImage:[UIImage imageNamed:@"project_almanac.jpg"]];
    seventhSon = [[MovieInfo alloc] initWithTitle:@"Seventh Son" showtimes:@"8:15PM | 9:15PM | 10:30PM" movieImage:[UIImage imageNamed:@"seventh_son.jpg"]];
    spongebob = [[MovieInfo alloc] initWithTitle:@"The Spongebob Movie" showtimes:@"10AM | 11:15AM | 1:30PM" movieImage:[UIImage imageNamed:@"spongebob.jpg"]];
    newHope = [[MovieInfo alloc] initWithTitle:@"Star Wars: A New Hope" showtimes:@"2PM | 4:15PM | 6:15PM" movieImage:[UIImage imageNamed:@"sw_hope.jpg"]];
    phantomMenace = [[MovieInfo alloc] initWithTitle:@"Star Wars: The Phantom Menance" showtimes:@"1:45PM | 3PM | 6PM" movieImage:[UIImage imageNamed:@"sw_phantom.jpg"]];
    treehouse = [[MovieInfo alloc] initWithTitle:@"Treehouse" showtimes:@"7:20PM | 8:30PM | 9:45PM" movieImage:[UIImage imageNamed:@"treehouse.jpg"]];
}

@end
