//
//  olymapiaViewController.h
//  olymapia
//
//  Created by michael mccarron on 9/16/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@class infoDataController;

@interface olymapiaViewController : UIViewController <MKMapViewDelegate>
@property (strong, nonatomic) infoDataController *dataController;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) NSString *attractionMode;
- (IBAction)done:(UIStoryboardSegue *)segue;

@end
