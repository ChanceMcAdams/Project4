//
//  MovieInfo.h
//  Project 4
//
//  Created by Chance Mcadams on 2/22/15.
//  Copyright (c) 2015 Chance McAdams. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface MovieInfo : NSObject

@property (strong, nonatomic)NSString *movieTitle;
@property (strong, nonatomic)NSString *showtimes;
@property (strong, nonatomic)UIImage *movieImage;

-(instancetype)initWithTitle:(NSString*)title showtimes:(NSString*)showtimes movieImage:(UIImage*)image;

@end
