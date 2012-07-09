//
//  UIImageView+Tronify.m
//  Tronify
//
//  Created by Torin Nguyen on 9/7/12.
//  Copyright (c) 2012 torin.nguyen@2359media.com. All rights reserved.
//

#import "Tronify.h"
#import "UIImageView+Tronify.h"

@implementation UIImageView (Tronify)

- (void)tronify
{
  self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:TRONIFY_TRANSLUCENT_BG]];
  
  self.layer.borderColor = TRONIFY_COLOR.CGColor;
  self.layer.borderWidth = TRONIFY_BORDER_WIDTH;
  self.layer.cornerRadius = TRONIFY_CORNER_RADIUS;
  self.layer.shadowRadius = TRONIFY_SHADOW_RADIUS;
  self.layer.shadowOpacity = TRONIFY_SHADOW_ALPHA;
  self.layer.shadowColor = TRONIFY_SHADOW_COLOR.CGColor;
  self.layer.shadowOffset = TRONIFY_SHADOW_OFFSET;
  self.layer.masksToBounds = NO;
  
  for (UIView *subview in self.subviews)
    [subview tronify];
}

@end
