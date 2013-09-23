//
//  infoDataController.m
//  olymapia
//
//  Created by michael mccarron on 9/19/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import "infoDataController.h"
#import "olymapiaDataModel.h"



@implementation infoDataController
- (void)initializeDefaultDataList {
    //NSLog(@"%@am i initialized? -- ");
    NSMutableArray *infoList = [[NSMutableArray alloc] init];
    self.masterInfoList = infoList;
    olymapiaDataModel *info;
  


    
    info = [[olymapiaDataModel alloc] initWithName:@"capital building" attractionDescription:@"the state capital building is really cool!" attractionAddress:@"123 Main St, Olympia, WA 98501"
                                   attractionImage:@"capital.png"
                                    attractionLink:@"http://www.wa.gov"  ];
    [self addInfoWithInfo:info];
    

    info = [[olymapiaDataModel alloc] initWithName:@"artesian well" attractionDescription:@"drink this clean artesian well water" attractionAddress:@"555 4th ave ne, WA 98501"
                                   attractionImage:@"artesian.png"
                                    attractionLink:@"http://www.artesianwell.com"  ];
    [self addInfoWithInfo:info];
    
    
    info = [[olymapiaDataModel alloc] initWithName:@"westside tavern" attractionDescription:@"oly's biker bar and greener hangout" attractionAddress:@"1980 Harrison Ave NW, WA 98502"
                                   attractionImage:@"westside.png"
                                    attractionLink:@"http://www.westsidetavern.com"  ];
    [self addInfoWithInfo:info];
    
    info = [[olymapiaDataModel alloc] initWithName:@"hands on" attractionDescription:@"oly's childrens museum" attractionAddress:@"1980 Harrison Ave NW, WA 98502"
                                   attractionImage:@"hands.png"
                                    attractionLink:@"http://www.handsonmuseum.com"  ];
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
    //NSString *s = [NSString stringWithFormat:@"This is a %d ", [self.masterInfoList count]];
    //NSLog(@"%@ object count", s);
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
