//
//  BinarySearch.h
//  LinkedListApp
//
//  Created by Bennett Lin on 2/24/14.
//  Copyright (c) 2014 Bennett Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinarySearch : NSObject

@property (strong, nonatomic) NSArray *arrayToSearch;

-(NSUInteger)searchTheArrayForNumber:(NSUInteger)searchedNumberValue;

@end
