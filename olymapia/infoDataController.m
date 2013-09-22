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
    NSLog(@"%@ object property", info.attractionName);
    

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
    NSString *s = [NSString stringWithFormat:@"This is a %d test", [self.masterInfoList count]];
    NSLog(@"%@ object count", s);
    return [self.masterInfoList count];
    
}
- (olymapiaDataModel *)objectInListAtIndex:(NSUInteger)theIndex {
    [self countOfList];
    return [self.masterInfoList objectAtIndex:theIndex];
}
- (void)addInfoWithInfo:(olymapiaDataModel *)info {
    [self.masterInfoList addObject:info];
    
}


@end
