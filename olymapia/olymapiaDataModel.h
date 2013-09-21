//
//  olymapiaDataController.h
//  olymapia
//
//  Created by michael mccarron on 9/19/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface olymapiaDataModel : NSObject

    @property (nonatomic, weak) NSString *attractionName;
    @property (nonatomic, weak) NSString *attractionDescription;
    @property (nonatomic, weak) NSString *attractionAddress;
    @property (nonatomic, weak) NSString *attractionImage;
    @property (nonatomic, weak) NSString *attractionLink;

-(id)initWithName:(NSString *)attractionName attractionDescription:(NSString *)attractionDescription
attractionAddress:(NSString *)attractionAddress
attractionImage:(NSString *)attractionImage
   attractionLink:(NSString *)attractionLink;

@end

