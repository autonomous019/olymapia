//
//  infoDetailViewController.h
//  olymapia
//
//  Created by michael mccarron on 9/19/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import <UIKit/UIKit.h>

@class olymapiaDataModel;

@interface infoDetailViewController : UIViewController

@property (strong, nonatomic) olymapiaDataModel *info;
@property (weak, nonatomic) IBOutlet UITextView *attractionNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *attractionDescriptionLabel;
@property (weak, nonatomic) IBOutlet UITextView *attractionAddressLabel;
@property (weak, nonatomic) IBOutlet UITextView *attractionLinkLabel;
@property (weak, nonatomic) IBOutlet UIImageView *attractionImageLabel;


@end
