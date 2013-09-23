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

    CLLocationCoordinate2D coordinate5;
    coordinate5.latitude = 47.044141;
    coordinate5.longitude = -122.900058;
    olymapiaMyAnnotation *annotation5 = [[olymapiaMyAnnotation alloc] initWithCoordinate:coordinate5 title:@"Darby's Cafe" subtitle:@"hipster eats" imageName:@"darby.png" ];
    [self.mapView addAnnotation:annotation5];
    //47.044141,-122.900058 darbys
    
    CLLocationCoordinate2D coordinate6;
    coordinate6.latitude = 47.069783;
    coordinate6.longitude = -122.969861;
    olymapiaMyAnnotation *annotation6 = [[olymapiaMyAnnotation alloc] initWithCoordinate:coordinate6 title:@"The Evergreen State College" subtitle:@"Oly's liberal arts college known for it's eccentrics and academics" imageName:@"evergreen.png" ];
    [self.mapView addAnnotation:annotation6];
    //47.069783,-122.969861
    
    CLLocationCoordinate2D coordinate7;
    coordinate7.latitude = 47.047452;
    coordinate7.longitude = -122.903337;
    olymapiaMyAnnotation *annotation7 = [[olymapiaMyAnnotation alloc] initWithCoordinate:coordinate7 title:@"Percival Landing" subtitle:@"water front pier & boardwalk" imageName:@"percival.png" ];
    [self.mapView addAnnotation:annotation7];
    //47.047452,-122.903337,"405 Columbia St NW  Olympia, WA 98501",-,
    
    CLLocationCoordinate2D coordinate8;
    coordinate8.latitude = 47.041137;
    coordinate8.longitude = -122.930106;
    olymapiaMyAnnotation *annotation8 = [[olymapiaMyAnnotation alloc] initWithCoordinate:coordinate8 title:@"Shopping Mall" subtitle:@"Oly's Shopping Mall" imageName:@"mall.png" ];
    [self.mapView addAnnotation:annotation8];
    //47.041137,-122.930106,"625 Black Lake Blvd SW  Olympia, WA 98502",-,
    
    CLLocationCoordinate2D coordinate9;
    coordinate9.latitude = 47.06677;
    coordinate9.longitude = -122.895249;
    olymapiaMyAnnotation *annotation9 = [[olymapiaMyAnnotation alloc] initWithCoordinate:coordinate9 title:@"Priest Point Park" subtitle:@"Woodland picnic park" imageName:@"priestpoint.png" ];
    [self.mapView addAnnotation:annotation9];
    //47.06677,-122.895249,"2600 East Bay Dr NE, Olympia, WA 98506",-,
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 47.047452;
    zoomLocation.longitude= -122.903337;

    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 3.0*METERS_PER_MILE, 3.0*METERS_PER_MILE);
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
    //self.attractionMode = annotation.title;
    //NSLog(@"%@ attractionMode", self.attractionMode);
    annotationView.leftCalloutAccessoryView = infoButton;

    return annotationView;
}


- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{

    if (control == view.leftCalloutAccessoryView) {
        //handle left control tap...
        self.attractionMode = view.annotation.title;
        //NSLog(@"%@ attractionMode", self.attractionMode);
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

        if ([self.attractionMode isEqualToString:@"Capital"])
        {
            detailViewController.info = [self.dataController objectInListAtIndex:0];
            
        }
        
        else if ([self.attractionMode isEqualToString:@"Artesian Well"])
        {

            detailViewController.info = [self.dataController objectInListAtIndex:1];
            
        }
        
        else if ([self.attractionMode isEqualToString:@"Westside Tavern"])
        {
  
            detailViewController.info = [self.dataController objectInListAtIndex:2];
            
        }
        
        else if ([self.attractionMode isEqualToString:@"Hands on Children's Museum"])
        {
     
            detailViewController.info = [self.dataController objectInListAtIndex:3];
            
        }
        
        else if ([self.attractionMode isEqualToString:@"Darby's Cafe"])
        {
            
            detailViewController.info = [self.dataController objectInListAtIndex:4];
            
        }
        
        else if ([self.attractionMode isEqualToString:@"The Evergreen State College"])
        {
            
            detailViewController.info = [self.dataController objectInListAtIndex:5];
            
        }
        
        else if ([self.attractionMode isEqualToString:@"Percival Landing"])
        {
            
            detailViewController.info = [self.dataController objectInListAtIndex:6];
            
        }

        else if ([self.attractionMode isEqualToString:@"Shopping Mall"])
        {
            
            detailViewController.info = [self.dataController objectInListAtIndex:7];
            
        }
        
        else if ([self.attractionMode isEqualToString:@"Priest Point Park"])
        {
            
            detailViewController.info = [self.dataController objectInListAtIndex:8];
            
        }

 
        
        /*
         logic for when user addition of their own attractions is implemented
        olymapiaDataModel *info;
        info = [[olymapiaDataModel alloc] initWithName:@"blah test" attractionDescription:@"test" attractionAddress:@"123 Main St" attractionImage:@"capital.png" attractionLink:@"http://some.com" ];
        detailViewController.info = info;
        */
    }
    
    
}

@end
