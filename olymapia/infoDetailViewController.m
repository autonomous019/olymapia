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


    // Update the user interface for the detail item.
    olymapiaDataModel *theInfo = self.info;
 
    if (theInfo) {
        //NSLog(@"%@ desc", theInfo.attractionDescription);
        
        self.attractionNameLabel.text = theInfo.attractionName;
        self.attractionNameLabel.editable = NO;
        
        self.attractionDescriptionLabel.text = theInfo.attractionDescription;
        self.attractionDescriptionLabel.editable = NO;
        
        self.attractionAddressLabel.text = theInfo.attractionAddress;
        self.attractionAddressLabel.editable = NO;
        
        self.attractionLinkLabel.text = theInfo.attractionLink;
        self.attractionLinkLabel.editable = NO;
        self.attractionLinkLabel.dataDetectorTypes = UIDataDetectorTypeLink;
        
        /*
         implementation of images for next update
         self.attractionImageLabel.image = theInfo.attractionImage;
         
         
         [self.attractionDescriptionLabel loadHTMLString:theInfo.attractionDescription baseURL:nil];
        */
        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configureView];
}

@end
