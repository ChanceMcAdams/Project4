//
//  TheaterInfo.h
//  Project 4
//
//  Created by Chance Mcadams on 2/22/15.
//  Copyright (c) 2015 Chance McAdams. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface TheaterInfo : NSObject

@property (strong, nonatomic)NSString *theaterName;
@property (strong, nonatomic)NSString *theaterLocation;
@property (strong, nonatomic)UIImage *theaterImage;
@property (strong, nonatomic)NSArray *theaterMovies;

-(instancetype)initWithTitle:(NSString*)title location:(NSString*)location;

@end
