//
//  UISegmentedControl+Tronify.m
//  Tronify
//
//  Created by Torin Nguyen on 9/7/12.
//  Copyright (c) 2012 torin.nguyen@2359media.com. All rights reserved.
//

#import "Tronify.h"
#import "UISegmentedControl+Tronify.h"

@implementation UISegmentedControl (Tronify)

- (void)tronify
{
  self.segmentedControlStyle = UISegmentedControlStyleBordered;
  self.backgroundColor = [UIColor clearColor];
  
  self.layer.borderColor = TRONIFY_COLOR.CGColor;
  self.layer.borderWidth = TRONIFY_BORDER_WIDTH;
  self.layer.cornerRadius = TRONIFY_CORNER_RADIUS;
  self.layer.shadowRadius = TRONIFY_SHADOW_RADIUS;
  self.layer.shadowOpacity = TRONIFY_SHADOW_ALPHA;
  self.layer.masksToBounds = NO;
  
  // cutomize the font size inside segmentedControl
  for (UIView *segment in self.subviews) 
  {
    for (UILabel *label in [segment subviews]) 
      if ([label isKindOfClass:[UILabel class]])
      {
        label.backgroundColor = [UIColor clearColor];
        label.textColor = TRONIFY_COLOR;
      }         
    
    for (UIButton *button in [segment subviews]) 
      if ([button isKindOfClass:[UIButton class]])
      {
      }
  }
}

@end
