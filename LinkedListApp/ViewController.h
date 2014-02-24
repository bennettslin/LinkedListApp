//
//  ViewController.h
//  LinkedListApp
//
//  Created by Bennett Lin on 2/24/14.
//  Copyright (c) 2014 Bennett Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *popButton;
@property (weak, nonatomic) IBOutlet UIButton *pushButton;

- (IBAction)popNode:(id)sender;
- (IBAction)pushNode:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *frontmostNodeLabel;
@property (weak, nonatomic) IBOutlet UILabel *indexNodeLabel;
@property (weak, nonatomic) IBOutlet UISearchBar *linkedListSearchBar;
@property (weak, nonatomic) IBOutlet UISearchBar *binarySearchBar;
@property (weak, nonatomic) IBOutlet UILabel *binaryResultLabel;

@end
