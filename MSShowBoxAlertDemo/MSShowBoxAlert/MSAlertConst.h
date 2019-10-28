//
//  MSAlertConst.h
//  MSShowBoxAlertDemo
//
//  Created by SongMin on 2019/10/28.
//  Copyright © 2019 lovsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

// 主颜色
#define ShowBoxColor @"#5960D6"

/** RGB */
#define SELColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

#define UIImageMake(img) [UIImage imageNamed:img]

/** 屏幕高度 */
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
/** 屏幕高度 */
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

//屏幕适配
/**当前设备对应375的比例*/
#define Ratio_375 (SCREEN_WIDTH/375.0)
/**转换成当前比例的数*/
#define Ratio(x) ((int)((x) * Ratio_375))
/// iPhone 4/4S/5/5S/SE
#define IS_320WIDTH_SCREEN 320

// 系统字体快捷使用
#define Font(size) [UIFont systemFontOfSize:(size)]

#define FontMake(size) ([UIFont systemFontOfSize:(IS_320WIDTH_SCREEN ? (size * 0.9) : size)])

#define FontBoldMake(size) ([UIFont boldSystemFontOfSize:(IS_320WIDTH_SCREEN ? (size * 0.9) : size)])

/** 入场出场动画时间 */
UIKIT_EXTERN const CGFloat AnimationTimeInterval;

/** 更新内容显示字体大小 */
UIKIT_EXTERN const CGFloat DescriptionFont;

/** 更新内容最大显示高度 */
UIKIT_EXTERN const CGFloat MaxDescriptionHeight;
