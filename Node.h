//
//  Node.h
//  LinkedListApp
//
//  Created by Bennett Lin on 2/24/14.
//  Copyright (c) 2014 Bennett Lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

//@property NSUInteger countMinusIndex;
@property (strong, nonatomic) NSString *myName;
@property (strong, nonatomic) Node *nodeInFrontOfMe;
@property (strong, nonatomic) Node *nodeBehindMe;

@end
