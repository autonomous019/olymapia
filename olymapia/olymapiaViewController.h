//
//  olymapiaViewController.h
//  olymapia
//
//  Created by michael mccarron on 9/16/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>



@interface olymapiaViewController : UIViewController <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)done:(UIStoryboardSegue *)segue;

@end
