//
//  olymapiaMyAnnotation.m
//  olymapia
//
//  Created by michael mccarron on 9/16/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import "olymapiaMyAnnotation.h"

@implementation olymapiaMyAnnotation
-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title  subtitle:(NSString *)subtitle imageName:(NSString *)imageName {
    if ((self = [super init])) {
        self.coordinate = coordinate;
        self.title = title;
        self.subtitle = subtitle;
        self.imageName = imageName;
       
    }
    return self;
}


@end
