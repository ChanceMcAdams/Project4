//
//  MovieInfo.m
//  Project 4
//
//  Created by Chance Mcadams on 2/22/15.
//  Copyright (c) 2015 Chance McAdams. All rights reserved.
//

#import "MovieInfo.h"

@implementation MovieInfo

-(instancetype)initWithTitle:(NSString*)title showtimes:(NSString*)showtimes movieImage:(UIImage*)image {
    self = [super init];
    
    if(self) {
        _movieTitle = title;
        _showtimes = showtimes;
        _movieImage = image;
    }
    
    return self;
}

@end
