//
//  infoDataController.h
//  olymapia
//
//  Created by michael mccarron on 9/19/13.
//  Copyright (c) 2013 michael mccarron. All rights reserved.
//

#import <Foundation/Foundation.h>
@class olymapiaDataModel;

@interface infoDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterInfoList;
- (NSUInteger)countOfList;
- (olymapiaDataModel *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addInfoWithInfo:(olymapiaDataModel *)info;
@end