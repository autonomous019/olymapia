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
  


    
    info = [[olymapiaDataModel alloc] initWithName:@"capital building" attractionDescription:@"The Washington State Capitol or Legislative Building in Olympia is the home of the government of the state of Washington. It contains chambers for the Washington State Legislature and offices for the governor, lieutenant governor, secretary of state and treasurer and is part of a campus consisting of several buildings. Buildings for the Washington Supreme Court, executive agencies and the Washington Governor's Mansion are part of the capitol campus. Source: Wikipedia" attractionAddress:@"416 Sid Snyder Ave SW, Olympia, WA 98504"
                                   attractionImage:@"capital.png"
                                    attractionLink:@""  ];
    [self addInfoWithInfo:info];
    

    info = [[olymapiaDataModel alloc] initWithName:@"artesian well" attractionDescription:@"drink this clean artesian well water and local legend has it you will always keep coming back to Oly and may even have to die here.  Artesian water supplies the local Olympia beer and many downtown businesses and was the sole source of water historically for Olympia." attractionAddress:@"415 4th Ave E Olympia, WA 98501"
                                   attractionImage:@"artesian.png"
                                    attractionLink:@""  ];
    [self addInfoWithInfo:info];
    
    
    info = [[olymapiaDataModel alloc] initWithName:@"westside tavern" attractionDescription:@"The Westside Tavern combines the comforting warmth of a local neighborhood bar with the cool sophistication of an urban lounge. We have an excellent selection of local beers as well as a full bar to meet all your cocktail needs, and our people are second to none when it comes to serving cold drinks, hot food and tall tales.The Westside Tavern is open every day, and our kitchen serves tasty appetizers, tempting salads and all our signature sliders from the minute the doors open until well into the evening. We encourage everyone to come in, pull up a stool and enjoy the best food and drink and the friendliest staff in Olympia." attractionAddress:@"1815 Harrison Ave Nw, Olympia, WA 98502."
                                   attractionImage:@"westside.png"
                                    attractionLink:@""  ];
    [self addInfoWithInfo:info];
    
    info = [[olymapiaDataModel alloc] initWithName:@"hands on" attractionDescription:@"Hands On Children's Museum is a children's museum in Olympia, Washington, USA. It was founded in 1987 and received over 150,000 visitors a year at its old location near the Washington State Capitol. Source: Wikipedia" attractionAddress:@"414 Jefferson St NE, Olympia, WA 98501"
                                   attractionImage:@"hands.png"
                                    attractionLink:@""  ];
    [self addInfoWithInfo:info];
    
    info = [[olymapiaDataModel alloc] initWithName:@"darby's cafe" attractionDescription:@"Darby's Cafe known for good food for the hipster clientele, you can also find a LGBTQI friendly staff here" attractionAddress:@"211 5th Ave SE  Olympia, WA 98501"
                                   attractionImage:@"darby.png"
                                    attractionLink:@""  ];
    [self addInfoWithInfo:info];
    
    info = [[olymapiaDataModel alloc] initWithName:@"the evergreen state college" attractionDescription:@"The Evergreen State College is an accredited public liberal arts college and a member of the Council of Public Liberal Arts Colleges. It is located in Olympia, Washington, USA Source: Wikipedia" attractionAddress:@"2700 Evergreen Pkwy NW  Olympia, WA 98505"
                                   attractionImage:@"darby.png"
                                    attractionLink:@""  ];
    [self addInfoWithInfo:info];

    //47.069783,-122.969861,"2700 Evergreen Pkwy NW  Olympia, WA 98505"

    
    
    
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
