//
//  infoDataController.m
//  olymapia
//
//  Created by michael mccarron on 9/19/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import "infoDataController.h"
#import "olymapiaDataModel.h"


/*
 _attractionName = attractionName;
 _attractionDescription = attractionDescription;
 _attractionAddress = attractionAddress;
 _attractionImage = attractionImage;
 _attractionLink = attractionLink;
 
 */

@implementation infoDataController
- (void)initializeDefaultDataList {
    //NSLog(@"%@am i initialized? -- ");
    NSMutableArray *infoList = [[NSMutableArray alloc] init];
    self.masterInfoList = infoList;
    olymapiaDataModel *info;
  
    info = [[olymapiaDataModel alloc] initWithName:@"capital building" attractionDescription:@"the state capital building is really cool!" attractionAddress:@"123 Main St, Olympia, WA 98501"
                                   attractionImage:@"capital.png"
                                    attractionLink:@"http://www.wa.gov"  ];
    //NSLog(@"%@ stuff ", info.attractionName);
    

    [self addInfoWithInfo:info];
    
    
}
- (void)setMasterInfoList:(NSMutableArray *)newList {
    if (_masterInfoList != newList) {
        _masterInfoList = [newList mutableCopy];
    }
}
- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}
- (NSUInteger)countOfList {
    return [self.masterInfoList count];
}
- (olymapiaDataModel *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterInfoList objectAtIndex:theIndex];
}
- (void)addInfoWithInfo:(olymapiaDataModel *)info {
    [self.masterInfoList addObject:info];
    
}


@end
