//
//  UIFont+Tronify.m
//  Tronify
//
//  Created by Torin Nguyen on 9/7/12.
//  Copyright (c) 2012 torin.nguyen@2359media.com. All rights reserved.
//

#import "Tronify.h"
#import "UIFont+Tronify.h"

@implementation UIFont (Tronify)

+(UIFont*)tronifyFontOfSize:(float)size
{
  return [UIFont fontWithName:TRONIFY_FONT size:size];
}

@end
