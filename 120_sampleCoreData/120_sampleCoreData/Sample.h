//
//  Sample.h
//  120_sampleCoreData
//
//  Created by NishideDaisuke on 2014/12/17.
//  Copyright (c) 2014年 knife0125. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Sample : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * created;
@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSString * tel;

@end
