//
//  UIColor+ColorChange.h
//  MSShowBoxAlertDemo
//
//  Created by SongMin on 2019/10/28.
//  Copyright © 2019 lovsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ColorChange)

// 颜色转换：iOS中（以#开头）十六进制的颜色转换为UIColor(RGB)
+ (UIColor *) colorWithHexString: (NSString *)color;

@end
