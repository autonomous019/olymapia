//
//  olymapiaDataController.h
//  olymapia
//
//  Created by michael mccarron on 9/19/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface olymapiaDataModel : NSObject

    @property (nonatomic, copy) NSString *attractionName;
    @property (nonatomic, copy) NSString *attractionDescription;
    @property (nonatomic, copy) NSString *attractionAddress;
    @property (nonatomic, copy) NSString *attractionImage;
    @property (nonatomic, copy) NSString *attractionLink;

-(id)initWithName:(NSString *)attractionName attractionDescription:(NSString *)attractionDescription
attractionAddress:(NSString *)attractionAddress
attractionImage:(NSString *)attractionImage
   attractionLink:(NSString *)attractionLink;

@end

