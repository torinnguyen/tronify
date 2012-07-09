//
//  ViewController.m
//  Tronify
//
//  Created by Torin Nguyen on 9/7/12.
//  Copyright (c) 2012 torin.nguyen@2359media.com. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "Tronify.h"

@interface ViewController ()
@property (nonatomic, strong) IBOutlet UIButton *button;
@end

@implementation ViewController
@synthesize button;

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  //This is the magic!
  [self.view tronify];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return YES;
}

@end
