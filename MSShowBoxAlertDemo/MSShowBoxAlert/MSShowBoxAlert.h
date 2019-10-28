//
//  MSShowBoxAlert.h
//  MSShowBoxAlertDemo
//
//  Created by SongMin on 2019/10/28.
//  Copyright © 2019 lovsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MSShowBoxAlert : UIView

@property (nonatomic, copy) void(^mainBtnAction)(void);

@property (nonatomic, copy) void(^anotherBtnAction)(void);


/**
 1.单个按钮的提示弹框
 
 @title 标题
 @subTitle 子标题
 @mainBtnTitle 按钮标题
 @mainBtnAction 按钮block事件
 @description 主要内容（字符串）格式如 @"1.xxxxxx\n2.xxxxxx"
 
 */
+ (void)showAlertWithTitle:(NSString *)title subTitle:(NSString *)subTitle description:(NSString *)description MainBtnTitle:(NSString *)mainBtnTitle MainBtnAction:(void(^)(void))mainBtnAction;

/**
 2.单个按钮的提示弹框
 
 @title 标题
 @topBgImgName 顶部图片名称
 @topBgImgWidth 顶部图片宽度
 @topBgImgHeight 顶部图片高度
 @mainBtnTitle 按钮标题
 @mainBtnAction 按钮block事件
 @description 主要内容（字符串）格式如 @"1.xxxxxx\n2.xxxxxx"
 
 */

+ (void)showAlertWithTitle:(NSString *)title TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description MainBtnTitle:(NSString *)mainBtnTitle MainBtnAction:(void(^)(void))mainBtnAction;

/**
 3.单个按钮的提示弹框
 
 @title 标题
 @titleColorHexString 主标题文字颜色
 @showBoxHeight 弹框高度
 @topBgImgName 顶部图片名称
 @topBgImgWidth 顶部图片宽度
 @topBgImgHeight 顶部图片高度
 @mainBtnTitle 按钮标题
 @mainBtnAction 按钮block事件
 @description 主要内容（字符串）格式如 @"1.xxxxxx\n2.xxxxxx"
 
 */

+ (void)showAlertWithTitle:(NSString *)title TitleColorHexString:(NSString *)titleColorHexString showBoxHeight:(CGFloat)showBoxHeight TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description MainBtnTitle:(NSString *)mainBtnTitle MainBtnAction:(void(^)(void))mainBtnAction;


/**
 4.可隐藏关闭按钮和底下按钮的提示弹框
 
 @title 标题
 @titleColorHexString 主标题文字颜色
 @isHiddenClosedBtn 是否隐藏关闭按钮
 @isHiddenBottomBtn 是否隐藏底下按钮
 @showBoxHeight 弹框高度
 @topBgImgName 顶部图片名称
 @topBgImgWidth 顶部图片宽度
 @topBgImgHeight 顶部图片高度
 @mainBtnTitle 按钮标题
 @mainBtnAction 按钮block事件
 @description 主要内容（字符串）格式如 @"1.xxxxxx\n2.xxxxxx"
 
 */
+ (void)showAlertWithTitle:(NSString *)title TitleColorHexString:(NSString *)titleColorHexString isHiddenClosedBtn:(BOOL)isHiddenClosedBtnValue isHiddenBottomBtn:(BOOL)isHiddenBottomBtnValue showBoxHeight:(CGFloat)showBoxHeight TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description MainBtnTitle:(NSString *)mainBtnTitle MainBtnAction:(void(^)(void))mainBtnAction;


/**
 5.可选两个按钮的提示弹框
 
 @title 标题
 @topBgImgName 顶部图片名称
 @topBgImgWidth 顶部图片宽度
 @topBgImgHeight 顶部图片高度
 @mainBtnTitle 按钮标题
 @mainBtnAction 按钮block事件
 @description 主要内容（字符串）格式如 @"1.xxxxxx\n2.xxxxxx"
 @isTwoBottomBtn 是否显示两个按钮  YES:两个  NO:一个
 @anotherBtnTitle 另一个按钮标题
 @anotherBtnAction 另一个按钮block事件
 
 */

+ (void)showAlertWithTitle:(NSString *)title TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description DescriptionColorHexString:(NSString *)descriptionColorHexString isTwoBottomBtn:(BOOL)isTwoBottomBtn MainBtnTitle:(NSString *)mainBtnTitle AnotherBtnTitle:(NSString *)anotherBtnTitle MainBtnAction:(void(^)(void))mainBtnAction AnotherBtnAction:(void(^)(void))anotherBtnAction;


/**
 6.可选两个按钮并自定义颜色的提示弹框
 
 @title 标题
 @topBgImgName 顶部图片名称
 @topBgImgWidth 顶部图片宽度
 @topBgImgHeight 顶部图片高度
 @mainBtnTitle 按钮标题
 @mainBtnAction 按钮block事件
 @description 主要内容（字符串）格式如 @"1.xxxxxx\n2.xxxxxx"
 @isTwoBottomBtn 是否显示两个按钮  YES:两个  NO:一个
 @anotherBtnTitle 另一个按钮标题
 @anotherBtnAction 另一个按钮block事件
 @titleColorHexString 主标题文字颜色
 @descriptionColorHexString 内容文字颜色
 @boxBgColorHexString 弹框背景颜色
 @btnBgColorHexString 主按钮背景色
 @btnTitleColorHexString 主按钮文字颜色
 @anotherBtnBgColorHexString 次按钮背景色
 @anotherBtnTitleColorHexString 次按钮文字颜色
 
 */

+ (void)showAlertWithTitle:(NSString *)title TitleColorHexString:(NSString *)titleColorHexString BoxBgColorHexString:(NSString *)boxBgColorHexString TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description DescriptionColorHexString:(NSString *)descriptionColorHexString isTwoBottomBtn:(BOOL)isTwoBottomBtn MainBtnTitle:(NSString *)mainBtnTitle BtnBgColorHexString:(NSString *)btnBgColorHexString BtnTitleColorHexString:(NSString *)btnTitleColorHexString AnotherBtnTitle:(NSString *)anotherBtnTitle AnotherBtnBgColorHexString:(NSString *)anotherBtnBgColorHexString AnotherBtnTitleColorHexString:(NSString *)anotherBtnTitleColorHexString  MainBtnAction:(void(^)(void))mainBtnAction AnotherBtnAction:(void(^)(void))anotherBtnAction;


/**
 7.可选两个按钮并自定义颜色的提示弹框
 
 @title 标题
 @subTitle 子标题
 @topBgImgName 顶部图片名称
 @topBgImgWidth 顶部图片宽度
 @topBgImgHeight 顶部图片高度
 @mainBtnTitle 按钮标题
 @mainBtnAction 按钮block事件
 @description 主要内容（字符串）格式如 @"1.xxxxxx\n2.xxxxxx"
 @isTwoBottomBtn 是否显示两个按钮  YES:两个  NO:一个
 @anotherBtnTitle 另一个按钮标题
 @anotherBtnAction 另一个按钮block事件
 @titleColorHexString 主标题文字颜色
 @subTitleColorHexString 子标题的颜色
 @descriptionColorHexString 内容文字颜色
 @boxBgColorHexString 弹框背景颜色
 @btnBgColorHexString 主按钮背景色
 @btnTitleColorHexString 主按钮文字颜色
 @anotherBtnBgColorHexString 次按钮背景色
 @anotherBtnTitleColorHexString 次按钮文字颜色
 
 */
+ (void)showAlertWithTitle:(NSString *)title TitleColorHexString:(NSString *)titleColorHexString subTitle:(NSString *)subTitle subTitleColorHexString:(NSString *)subTitleColorHexString BoxBgColorHexString:(NSString *)boxBgColorHexString TopBgImgName:(NSString * _Nullable)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description DescriptionColorHexString:(NSString *)descriptionColorHexString isTwoBottomBtn:(BOOL)isTwoBottomBtn MainBtnTitle:(NSString *)mainBtnTitle BtnBgColorHexString:(NSString *)btnBgColorHexString BtnTitleColorHexString:(NSString *)btnTitleColorHexString AnotherBtnTitle:(NSString *)anotherBtnTitle AnotherBtnBgColorHexString:(NSString *)anotherBtnBgColorHexString AnotherBtnTitleColorHexString:(NSString *)anotherBtnTitleColorHexString  MainBtnAction:(void(^)(void))mainBtnAction AnotherBtnAction:(void(^)(void))anotherBtnAction;


@end

NS_ASSUME_NONNULL_END
