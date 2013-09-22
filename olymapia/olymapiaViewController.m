//
//  olymapiaViewController.m
//  olymapia
//
//  Created by michael mccarron on 9/16/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import "olymapiaViewController.h"
#import "infoDetailViewController.h"
#import "olymapiaMyAnnotation.h"
#import "olymapiaDataModel.h"
#import "infoDataController.h"




#define METERS_PER_MILE 1609.344
/*
@interface olymapiaViewController ()

@end
*/

@implementation olymapiaViewController


- (void)awakeFromNib
{
    [super awakeFromNib];
    self.dataController = [[infoDataController alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _mapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    _mapView.mapType = MKMapTypeHybrid;
    
    [self.view addSubview:_mapView];
    
    //4
    self.mapView.delegate = self;
    //5
    
    CLLocationCoordinate2D coordinate1;
    coordinate1.latitude = 47.0354558;
    coordinate1.longitude = -122.9037991;
    olymapiaMyAnnotation *annotation1 = [[olymapiaMyAnnotation alloc] initWithCoordinate:coordinate1 title:@"Capital" subtitle:@"state capital building" imageName:@"capital.png" ];
    [self.mapView addAnnotation:annotation1];
    
    CLLocationCoordinate2D coordinate2;
    coordinate2.latitude = 47.045807;
    coordinate2.longitude = -122.924297;
    olymapiaMyAnnotation *annotation2 = [[olymapiaMyAnnotation alloc] initWithCoordinate:coordinate2 title:@"Westside Tavern" subtitle:@"Oly's biker bar " imageName:@"westside.png" ];
    [self.mapView addAnnotation:annotation2];
    
    CLLocationCoordinate2D coordinate3;
    coordinate3.latitude = 47.0480433;
    coordinate3.longitude = -122.8967719;
    olymapiaMyAnnotation *annotation3 = [[olymapiaMyAnnotation alloc] initWithCoordinate:coordinate3 title:@"Hands on Children's Museum" subtitle:@"incredible childrens museum " imageName:@"hands.png" ];
    [self.mapView addAnnotation:annotation3];
    
 
    CLLocationCoordinate2D coordinate4;
    coordinate4.latitude = 47.044977;
    coordinate4.longitude = -122.897183;
    olymapiaMyAnnotation *annotation4 = [[olymapiaMyAnnotation alloc] initWithCoordinate:coordinate4 title:@"Artesian Well" subtitle:@"natural spring water" imageName:@"artesian.png" ];
    //drink this clean water and you'll always be a part of Olympia -- 415 4th Avenue East, Olympia, WA 98501
    [self.mapView addAnnotation:annotation4];

    
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //1
    //47.0425° N, 122.8931° W
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 47.0354558;
    zoomLocation.longitude= -122.9037991;
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    [self.mapView setRegion:viewRegion animated:YES];
}


- (IBAction)done:(UIStoryboardSegue *)segue
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

#pragma mark -MapView Delegate Methods
//6
- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    //7
    if([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    
    //8
    static NSString *identifier = @"myAnnotation";
    MKPinAnnotationView * annotationView = (MKPinAnnotationView*)[self.mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
    if (!annotationView)
    {
        //9
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        annotationView.pinColor = MKPinAnnotationColorRed;
        annotationView.animatesDrop = YES;
        annotationView.canShowCallout = YES;
        
        
    }else {
        annotationView.annotation = annotation;
    }
    annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeCustom];
    infoButton.frame = CGRectMake(0, 0, 30, 30);
    [infoButton setBackgroundImage:[UIImage imageNamed:@"info.png"] forState:UIControlStateNormal];
    
    annotationView.leftCalloutAccessoryView = infoButton;

    return annotationView;
}


- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{

    if (control == view.leftCalloutAccessoryView) {
        //handle left control tap...
       
        [self performSegueWithIdentifier:@"infoDetailViewController" sender:self];
 
    }
    else
        if (control == view.rightCalloutAccessoryView) {
            id <MKAnnotation> annotation = view.annotation;
            CLLocationCoordinate2D coordinate = [annotation coordinate];
            MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate:coordinate addressDictionary:nil];
            MKMapItem *mapitem = [[MKMapItem alloc] initWithPlacemark:placemark];
            mapitem.name = annotation.title;
            [mapitem openInMapsWithLaunchOptions:nil];
        }
    

}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"infoDetailViewController"]) {
        
        infoDetailViewController *detailViewController = [segue destinationViewController];
        //NSLog(@"%@",detailViewController.info.attractionName);
        detailViewController.info = [self.dataController objectInListAtIndex:0];
        /*
        olymapiaDataModel *info;
        info = [[olymapiaDataModel alloc] initWithName:@"blah test" attractionDescription:@"test" attractionAddress:@"123 Main St" attractionImage:@"capital.png" attractionLink:@"http://some.com" ];
        detailViewController.info = info;
        */
    }
    
    
}

@end
