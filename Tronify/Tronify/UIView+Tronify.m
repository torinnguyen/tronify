//
//  UIView+Tronify.m
//  Tronify
//
//  Created by Torin Nguyen on 9/7/12.
//  Copyright (c) 2012 torin.nguyen@2359media.com. All rights reserved.
//

#import "Tronify.h"
#import "UIView+Tronify.h"
#import "UIButton+Tronify.h"
#import "UILabel+Tronify.h"

@implementation UIView (Tronify)

- (void)tronify
{
  self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:TRONIFY_GRID_BG]];
  
  for (UIView *subview in self.subviews)
  {
    if ([subview isKindOfClass:[UIButton class]]) {
      UIButton *button = (UIButton*)subview;
      [button tronify];
      continue;
    }
    
    if ([subview isKindOfClass:[UILabel class]]) {
      UILabel *label = (UILabel*)subview;
      [label tronify];
      continue;
    }

    if ([subview isKindOfClass:[UISegmentedControl class]]) {
      UISegmentedControl *segment = (UISegmentedControl*)segment;
      [segment tronify];
      continue;
    }
    
    [subview tronify];
  }
}

@end
