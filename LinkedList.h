//
//  LinkedList.h
//  LinkedListApp
//
//  Created by Bennett Lin on 2/24/14.
//  Copyright (c) 2014 Bennett Lin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Node;

@interface LinkedList : NSMutableArray

@property (strong, nonatomic) Node *lastNode;

-(id)initWithOneNode;
-(Node *)findFrontmostNode;

-(void)pushThisNode:(Node *)newNode;
-(Node *)popFrontNode;
-(NSUInteger)findNodeWithThisName:(NSString *)name;

@end
