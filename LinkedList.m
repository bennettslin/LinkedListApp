//
//  LinkedList.m
//  LinkedListApp
//
//  Created by Bennett Lin on 2/24/14.
//  Copyright (c) 2014 Bennett Lin. All rights reserved.
//

#import "LinkedList.h"
#import "Node.h"

@implementation LinkedList

-(id)initWithOneNode {
  self = [super init];
  if (self) {
    Node *lastNode = [[Node alloc] init];
//    lastNode.countMinusIndex = 1;
    lastNode.myName = @"backmostNode";
    lastNode.nodeInFrontOfMe = nil;
    lastNode.nodeBehindMe = nil;
    self.lastNode = lastNode;
  }
  return self;
}

-(Node *)findFrontmostNode {
  BOOL frontmostNodeReached = NO;
  Node *frontmostNode = self.lastNode;
  
  while (!frontmostNodeReached) {
    if (frontmostNode.nodeInFrontOfMe) {
      frontmostNode = frontmostNode.nodeInFrontOfMe;
    } else {
      frontmostNodeReached = YES;
    }
  }
  return frontmostNode;
}

-(void)pushThisNode:(Node *)newNode {
  Node *frontmostNode = [self findFrontmostNode];
  frontmostNode.nodeInFrontOfMe = newNode;
  newNode.nodeBehindMe = frontmostNode;
}

-(Node *)popFrontNode {
  Node *toBePoppedNode = [self findFrontmostNode];
  Node *newFrontmostNode = toBePoppedNode.nodeBehindMe;
  newFrontmostNode.nodeInFrontOfMe = nil;
  toBePoppedNode.nodeInFrontOfMe = nil;
  toBePoppedNode.nodeBehindMe = nil;
  return toBePoppedNode;
}

-(NSUInteger)findNodeWithThisName:(NSString *)name {
  NSUInteger index = 0;
  Node *lastNodeChecked = self.lastNode;
  
  while (lastNodeChecked.nodeInFrontOfMe) {
    if ([lastNodeChecked.myName isEqualToString:name]) {
      return index;
    }
    lastNodeChecked = lastNodeChecked.nodeInFrontOfMe;
    index++;
  }
  return 9999999;
}

@end
