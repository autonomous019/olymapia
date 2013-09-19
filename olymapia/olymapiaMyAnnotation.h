//
//  olymapiaMyAnnotation.h
//  olymapia
//
//  Created by michael mccarron on 9/16/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface olymapiaMyAnnotation : NSObject <MKAnnotation>
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *subtitle;
@property (nonatomic,assign) CLLocationCoordinate2D coordinate;
@property (strong, nonatomic) NSString *imageName;

-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title subtitle:(NSString *)subtitle imageName:(NSString *)imageName;
@end
