//
//  UIButton+Tronify.m
//  Tronify
//
//  Created by Torin Nguyen on 9/7/12.
//  Copyright (c) 2012 torin.nguyen@2359media.com. All rights reserved.
//

#import "UIButton+Tronify.h"
#import "Tronify.h"

@implementation UIButton (Tronify)

- (void)tronify
{
  [self setTitleColor:TRONIFY_COLOR forState:UIControlStateNormal];
  
  if (self.buttonType == UIButtonTypeRoundedRect)
    [self setBackgroundImage:[UIImage imageNamed:TRONIFY_BLACK_BG] forState:UIControlStateNormal];
  else
    [self setBackgroundImage:[UIImage imageNamed:TRONIFY_TRANSLUCENT_BG] forState:UIControlStateNormal];
  
  self.titleLabel.font = [UIFont tronifyFontOfSize:self.titleLabel.font.pointSize];
  
  self.backgroundColor = [UIColor clearColor];
  self.layer.borderColor = TRONIFY_COLOR.CGColor;
  self.layer.borderWidth = TRONIFY_BORDER_WIDTH;
  self.layer.cornerRadius = TRONIFY_CORNER_RADIUS;
  self.layer.shadowRadius = TRONIFY_SHADOW_RADIUS;
  self.layer.shadowOpacity = TRONIFY_SHADOW_ALPHA;
  self.layer.shadowColor = TRONIFY_SHADOW_COLOR.CGColor;
  self.layer.shadowOffset = TRONIFY_SHADOW_OFFSET;
  self.layer.masksToBounds = NO;
}

- (void)tronifyBackground:(float)alpha
{
  [self tronify];
  
  UIColor *color = TRONIFY_COLOR;
  //color.alpha = alpha;
  self.backgroundColor = color;
}

@end
