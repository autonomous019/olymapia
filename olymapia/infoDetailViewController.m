//
//  infoDetailViewController.m
//  olymapia
//
//  Created by michael mccarron on 9/19/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import "infoDetailViewController.h"
#import "olymapiaDataModel.h"

@interface infoDetailViewController ()
- (void)configureView;
@end

@implementation infoDetailViewController

#pragma mark - Managing the detail item

- (void)setInfo:(olymapiaDataModel *) newInfo
{

    if (_info != newInfo) {
        _info = newInfo;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    NSLog(@"detail configure view process");
       NSLog(@"%@get-- ",self.attractionNameLabel.text);
    // Update the user interface for the detail item.
    olymapiaDataModel *theInfo = self.info;
    NSLog(@"%@name-- ",theInfo.attractionName);
    NSLog(@"%@xxx-- ",self.info.attractionName);
    /*
     _attractionName = attractionName;
     _attractionDescription = attractionDescription;
     _attractionAddress = attractionAddress;
     _attractionImage = attractionImage;
     _attractionLink = attractionLink;
     */
 
    if (theInfo) {
        NSLog(@"The code runs through here!");
        self.attractionNameLabel.text = theInfo.attractionName;
        self.attractionDescriptionLabel.text = theInfo.attractionDescription;
        self.attractionAddressLabel.text = theInfo.attractionAddress;
        //self.attractionImageLabel.image = theInfo.attractionImage;
        self.attractionLinkLabel.text = theInfo.attractionLink;
        
        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configureView];
}

@end
