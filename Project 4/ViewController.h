//
//  ViewController.h
//  Project 4
//
//  Created by Chance Mcadams on 2/22/15.
//  Copyright (c) 2015 Chance McAdams. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TheaterInfo, MovieInfo;

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSArray *theaterArray;
    IBOutlet UITableView *movieTableView;
    
    //Theaters
    TheaterInfo *carmikeTheater;
    TheaterInfo *hollywoodTheater;
    TheaterInfo *reagalTheater;
    TheaterInfo *timeSquareTheater;
    TheaterInfo *centralTheater;
    
    //Movies
    MovieInfo *americanSniper;
    MovieInfo *bigHero6;
    MovieInfo *birdman;
    MovieInfo *boyhood;
    MovieInfo *equalizer;
    MovieInfo *fiftyShades;
    MovieInfo *fury;
    MovieInfo *goneGirl;
    MovieInfo *horribleBosses;
    MovieInfo *hotTub;
    MovieInfo *imitationGame;
    MovieInfo *johnWick;
    MovieInfo *juipter;
    MovieInfo *kingsman;
    MovieInfo *fellowshipOfTheRing;
    MovieInfo *returnOfTheKing;
    MovieInfo *twoTowers;
    MovieInfo *lucy;
    MovieInfo *nightcrawler;
    MovieInfo *projectAlmanac;
    MovieInfo *seventhSon;
    MovieInfo *spongebob;
    MovieInfo *newHope;
    MovieInfo *phantomMenace;
    MovieInfo *treehouse;
}

@end

