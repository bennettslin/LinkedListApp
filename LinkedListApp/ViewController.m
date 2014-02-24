//
//  ViewController.m
//  LinkedListApp
//
//  Created by Bennett Lin on 2/24/14.
//  Copyright (c) 2014 Bennett Lin. All rights reserved.
//

#import "ViewController.h"
#import "Node.h"
#import "LinkedList.h"
#import "BinarySearch.h"

@interface ViewController () <UISearchBarDelegate>

@end

@implementation ViewController {
  LinkedList *_linkedList;
  BinarySearch *_binarySearch;
  NSUInteger _alwaysBeAddingOne;
}

-(void)viewDidLoad {
  [super viewDidLoad];

  _linkedList = [[LinkedList alloc] initWithOneNode];
  _alwaysBeAddingOne = 0;
  
  self.linkedListSearchBar.delegate = self;
  self.binarySearchBar.delegate = self;
  
  for (int i = 0; i <= 10; i++) {
    Node *newNode = [[Node alloc] init];
    newNode.myName = [NSString stringWithFormat:@"%i", i];
    [_linkedList pushThisNode:newNode];
    _alwaysBeAddingOne++;
  }
  [self refreshFrontmostNodeLabel];
  
  _binarySearch = [[BinarySearch alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)popNode:(id)sender {
  [_linkedList popFrontNode];
  [self refreshFrontmostNodeLabel];
}

-(IBAction)pushNode:(id)sender {
  Node *newNode = [[Node alloc] init];
  newNode.myName = [NSString stringWithFormat:@"%i", _alwaysBeAddingOne];
  _alwaysBeAddingOne++;
  [_linkedList pushThisNode:newNode];
  [self refreshFrontmostNodeLabel];
}

-(void)refreshFrontmostNodeLabel {
  self.frontmostNodeLabel.text = [[_linkedList findFrontmostNode] myName];
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
  if (searchBar == self.linkedListSearchBar) {
    [self.linkedListSearchBar resignFirstResponder];
    
    NSUInteger index = [_linkedList findNodeWithThisName:searchBar.text];
    if (index != 9999999) {
      self.indexNodeLabel.text = [NSString stringWithFormat:@"Node found at index %i", index];
    } else {
      self.indexNodeLabel.text = @"node not found";
    }
  } else if (searchBar == self.binarySearchBar) {
    [self.binarySearchBar resignFirstResponder];
    
    NSUInteger searchedValue = [searchBar.text integerValue];
    if (searchedValue) {
      NSUInteger index = [_binarySearch searchTheArrayForNumber:searchedValue];
      if (index != 9999999) {
        self.binaryResultLabel.text = [NSString stringWithFormat:@"Number at index %i", index];
      } else {
        self.binaryResultLabel.text = @"Number not found";
      }
    }
  }
}

@end
