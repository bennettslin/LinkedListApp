//
//  BinarySearch.m
//  LinkedListApp
//
//  Created by Bennett Lin on 2/24/14.
//  Copyright (c) 2014 Bennett Lin. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

-(id)init {
  self = [super init];
  if (self) {
    NSMutableArray *tempArray = [[NSMutableArray alloc] initWithCapacity:10];
    for (int i = 0; i < 500; i++) {
      NSUInteger coinFlip = arc4random_uniform(2);
      if (coinFlip == 1) {
        NSNumber *numberObject = [NSNumber numberWithInt:i];
//        NSLog(@"%i", i);
        [tempArray addObject:numberObject];
      }
    }
    self.arrayToSearch = [NSArray arrayWithArray:tempArray];
  }
  return self;
}

-(NSUInteger)searchTheArrayForNumber:(NSUInteger)searchedNumberValue {
  NSUInteger bottomIndex = 0;
  NSUInteger topIndex = [self.arrayToSearch count];
  NSUInteger midpointIndex;
  
  while (topIndex > bottomIndex + 1) {
    midpointIndex = (topIndex - bottomIndex) / 2 + bottomIndex;
//    NSLog(@"bottom %i, mid %i, top %i", bottomIndex, midpointIndex, topIndex);
    NSUInteger midpointNumberValue = [self.arrayToSearch[midpointIndex] unsignedIntegerValue];
    
    if (midpointNumberValue == searchedNumberValue) {
      return midpointIndex;
    } else if (midpointNumberValue < searchedNumberValue) {
      bottomIndex = midpointIndex;
    } else if (midpointNumberValue > searchedNumberValue) {
      topIndex = midpointIndex;
    }
  }
  return 9999999;
}

@end
