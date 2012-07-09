//
//  UILabel+Tronify.m
//  Tronify
//
//  Created by Torin Nguyen on 9/7/12.
//  Copyright (c) 2012 torin.nguyen@2359media.com. All rights reserved.
//

#import "Tronify.h"
#import "UILabel+Tronify.h"

@implementation UILabel (Tronify)

- (void)tronify
{
  self.textColor = TRONIFY_COLOR;
  self.font = [UIFont tronifyFontOfSize:self.font.pointSize];

  self.backgroundColor = [UIColor clearColor];
  self.layer.shadowRadius = TRONIFY_SHADOW_RADIUS;
  self.layer.shadowOpacity = TRONIFY_SHADOW_ALPHA;
  self.layer.shadowColor = TRONIFY_SHADOW_COLOR.CGColor;
  self.layer.shadowOffset = TRONIFY_SHADOW_OFFSET;
}

- (void)tronifyBackground:(float)alpha
{
  [self tronify];
  UIColor *color = TRONIFY_COLOR;
  //color.alpha = alpha;
  self.backgroundColor = color;
}


@end
