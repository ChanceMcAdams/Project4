//
//  TheaterInfo.m
//  Project 4
//
//  Created by Chance Mcadams on 2/22/15.
//  Copyright (c) 2015 Chance McAdams. All rights reserved.
//

#import "TheaterInfo.h"

@implementation TheaterInfo

-(instancetype)initWithTitle:(NSString*)title location:(NSString*)location {
    self = [super init];
    
    if(self) {
        _theaterName = title;
        _theaterLocation = location;
    }
    
    return self;
}

@end
