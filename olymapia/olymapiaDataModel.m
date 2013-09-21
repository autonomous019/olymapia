//
//  olymapiaDataController.m
//  olymapia
//
//  Created by michael mccarron on 9/19/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import "olymapiaDataModel.h"

@implementation olymapiaDataModel

/*
-(id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date
{
    self = [super init];
    if (self) {
        _name = name;
        _location = location;
        _date = date;
        return self;
    }
    
*/
-(id)initWithName:(NSString *)attractionName
                 attractionDescription:(NSString *)attractionDescription attractionAddress:(NSString *)attractionAddress attractionImage:(NSString *)attractionImage attractionLink:(NSString *)attractionLink

{
    self = [super init];
    if(self) {
        _attractionName = attractionName;
        _attractionDescription = attractionDescription;
        _attractionAddress = attractionAddress;
        _attractionImage = attractionImage;
        _attractionLink = attractionLink;
        return self;
    }
    return nil;
}

    


@end