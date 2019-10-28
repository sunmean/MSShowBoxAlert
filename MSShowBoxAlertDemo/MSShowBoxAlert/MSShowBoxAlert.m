//
//  MSShowBoxAlert.m
//  MSShowBoxAlertDemo
//
//  Created by SongMin on 2019/10/28.
//  Copyright © 2019 lovsoft. All rights reserved.
//

#import "MSShowBoxAlert.h"
#import "MSAlertConst.h"
#import "UIColor+ColorChange.h"

CGFloat SHOWBOXALERT_MAX_HEIGHT = 400;

BOOL isHiddenClosedBtn = NO;

BOOL isHiddenBottomBtn = NO;

@interface MSShowBoxAlert ()

/** 标题 */
@property (nonatomic, copy) NSString *title;

// 子标题
@property (nonatomic, copy) NSString *subTitle;

/** 内容 */
@property (nonatomic, copy) NSString *desc;
/** 顶部图片 */
@property (nonatomic, copy) NSString *topBgImgName;
/** 顶部图片宽度 */
@property (nonatomic,assign) CGFloat topBgImgWidth;
/** 顶部图片高度 */
@property (nonatomic,assign) CGFloat topBgImgHeight;
/** 是否两个 */
@property (nonatomic, assign) BOOL isTwoBottomBtn;
/** 第二个按钮文字 */
@property (nonatomic, copy) NSString *mainBtnTitle;
/** 第一个按钮文字 */
@property (nonatomic, copy) NSString *anotherBtnTitle;
/** 主标题文字颜色 */
@property (nonatomic,copy) NSString *titleColorHexString;

// 子标题文字颜色
@property (nonatomic,copy) NSString *subTitleColorHexString;

/** 内容文字颜色 */
@property (nonatomic,copy) NSString *descriptionColorHexString;
/** 弹框背景颜色 */
@property (nonatomic,copy) NSString *boxBgColorHexString;
/** 主按钮背景色 */
@property (nonatomic,copy) NSString *btnBgColorHexString;
/** 主按钮文字颜色 */
@property (nonatomic,copy) NSString *btnTitleColorHexString;
/** 次按钮背景色 */
@property (nonatomic,copy) NSString *anotherBtnBgColorHexString;
/** 次按钮文字颜色 */
@property (nonatomic,copy) NSString *anotherBtnTitleColorHexString;

@end


@implementation MSShowBoxAlert

+ (void)showAlertWithTitle:(NSString *)title subTitle:(NSString *)subTitle description:(NSString *)description MainBtnTitle:(NSString *)mainBtnTitle MainBtnAction:(void(^)(void))mainBtnAction {
    SHOWBOXALERT_MAX_HEIGHT = SCREEN_HEIGHT / 5 * 3;
    [self showAlertWithTitle:title TitleColorHexString:@"#333333" subTitle:subTitle subTitleColorHexString:@"#333333" BoxBgColorHexString:@"#FFFFFF" TopBgImgName:nil TopBgImgWidth:0.0 TopBgImgHeight:0.0 Description:description DescriptionColorHexString:@"#333333" isTwoBottomBtn:NO MainBtnTitle:mainBtnTitle BtnBgColorHexString:ShowBoxColor BtnTitleColorHexString:@"#FFFFFF" AnotherBtnTitle:@"" AnotherBtnBgColorHexString:@"#FFFFFF" AnotherBtnTitleColorHexString:ShowBoxColor MainBtnAction:mainBtnAction AnotherBtnAction:nil];
}

+ (void)showAlertWithTitle:(NSString *)title TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description MainBtnTitle:(NSString *)mainBtnTitle MainBtnAction:(void(^)(void))mainBtnAction
{
    SHOWBOXALERT_MAX_HEIGHT = SCREEN_HEIGHT / 5 * 3;
    MSShowBoxAlert *showBoxAlert = [[MSShowBoxAlert alloc]initTitle:title TitleColorHexString:ShowBoxColor BoxBgColorHexString:@"#FFFFFF" TopBgImgName:topBgImgName TopBgImgWidth:topBgImgWidth TopBgImgHeight:topBgImgHeight Description:description DescriptionColorHexString:@"#333333" isTwoBottomBtn:NO MainBtnTitle:mainBtnTitle BtnBgColorHexString:ShowBoxColor BtnTitleColorHexString:@"#FFFFFF" AnotherBtnTitle:@"" AnotherBtnBgColorHexString:@"#FFFFFF" AnotherBtnTitleColorHexString:ShowBoxColor MainBtnAction:mainBtnAction AnotherBtnAction:nil];
    [[UIApplication sharedApplication].delegate.window addSubview:showBoxAlert];
}


+ (void)showAlertWithTitle:(NSString *)title TitleColorHexString:(NSString *)titleColorHexString showBoxHeight:(CGFloat)showBoxHeight TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description MainBtnTitle:(NSString *)mainBtnTitle MainBtnAction:(void(^)(void))mainBtnAction
{
    showBoxHeight = showBoxHeight < 190 ? 190 : showBoxHeight;
    SHOWBOXALERT_MAX_HEIGHT = showBoxHeight;
    MSShowBoxAlert *showBoxAlert = [[MSShowBoxAlert alloc]initTitle:title TitleColorHexString:titleColorHexString BoxBgColorHexString:@"#FFFFFF" TopBgImgName:topBgImgName TopBgImgWidth:topBgImgWidth TopBgImgHeight:topBgImgHeight Description:description DescriptionColorHexString:@"#333333" isTwoBottomBtn:NO MainBtnTitle:mainBtnTitle BtnBgColorHexString:ShowBoxColor BtnTitleColorHexString:@"#FFFFFF" AnotherBtnTitle:@"" AnotherBtnBgColorHexString:@"#FFFFFF" AnotherBtnTitleColorHexString:ShowBoxColor MainBtnAction:mainBtnAction AnotherBtnAction:nil];
    [[UIApplication sharedApplication].delegate.window addSubview:showBoxAlert];
}

+ (void)showAlertWithTitle:(NSString *)title TitleColorHexString:(NSString *)titleColorHexString isHiddenClosedBtn:(BOOL)isHiddenClosedBtnValue isHiddenBottomBtn:(BOOL)isHiddenBottomBtnValue showBoxHeight:(CGFloat)showBoxHeight TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description MainBtnTitle:(NSString *)mainBtnTitle MainBtnAction:(void(^)(void))mainBtnAction
{
    showBoxHeight = showBoxHeight < 190 ? 190 : showBoxHeight;
    isHiddenClosedBtn = isHiddenClosedBtnValue;
    isHiddenBottomBtn = isHiddenBottomBtnValue;
    SHOWBOXALERT_MAX_HEIGHT = showBoxHeight;
    MSShowBoxAlert *showBoxAlert = [[MSShowBoxAlert alloc]initTitle:title TitleColorHexString:titleColorHexString BoxBgColorHexString:@"#FFFFFF" TopBgImgName:topBgImgName TopBgImgWidth:topBgImgWidth TopBgImgHeight:topBgImgHeight Description:description DescriptionColorHexString:@"#333333" isTwoBottomBtn:NO MainBtnTitle:mainBtnTitle BtnBgColorHexString:ShowBoxColor BtnTitleColorHexString:@"#FFFFFF" AnotherBtnTitle:@"" AnotherBtnBgColorHexString:@"#FFFFFF" AnotherBtnTitleColorHexString:ShowBoxColor MainBtnAction:mainBtnAction AnotherBtnAction:nil];
    [[UIApplication sharedApplication].delegate.window addSubview:showBoxAlert];
}



+ (void)showAlertWithTitle:(NSString *)title TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description DescriptionColorHexString:(NSString *)descriptionColorHexString isTwoBottomBtn:(BOOL)isTwoBottomBtn MainBtnTitle:(NSString *)mainBtnTitle AnotherBtnTitle:(NSString *)anotherBtnTitle MainBtnAction:(void(^)(void))mainBtnAction AnotherBtnAction:(void(^)(void))anotherBtnAction
{
    SHOWBOXALERT_MAX_HEIGHT = SCREEN_HEIGHT / 5 * 3;
    MSShowBoxAlert *showBoxAlert = [[MSShowBoxAlert alloc]initTitle:title TitleColorHexString:ShowBoxColor BoxBgColorHexString:@"#FFFFFF" TopBgImgName:topBgImgName TopBgImgWidth:topBgImgWidth TopBgImgHeight:topBgImgHeight Description:description DescriptionColorHexString:@"#333333" isTwoBottomBtn:isTwoBottomBtn MainBtnTitle:mainBtnTitle BtnBgColorHexString:ShowBoxColor BtnTitleColorHexString:@"#FFFFFF" AnotherBtnTitle:anotherBtnTitle AnotherBtnBgColorHexString:@"#FFFFFF" AnotherBtnTitleColorHexString:ShowBoxColor MainBtnAction:mainBtnAction AnotherBtnAction:anotherBtnAction];
    [[UIApplication sharedApplication].delegate.window addSubview:showBoxAlert];
    
}


+ (void)showAlertWithTitle:(NSString *)title TitleColorHexString:(NSString *)titleColorHexString BoxBgColorHexString:(NSString *)boxBgColorHexString TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description DescriptionColorHexString:(NSString *)descriptionColorHexString isTwoBottomBtn:(BOOL)isTwoBottomBtn MainBtnTitle:(NSString *)mainBtnTitle BtnBgColorHexString:(NSString *)btnBgColorHexString BtnTitleColorHexString:(NSString *)btnTitleColorHexString AnotherBtnTitle:(NSString *)anotherBtnTitle AnotherBtnBgColorHexString:(NSString *)anotherBtnBgColorHexString AnotherBtnTitleColorHexString:(NSString *)anotherBtnTitleColorHexString  MainBtnAction:(void(^)(void))mainBtnAction AnotherBtnAction:(void(^)(void))anotherBtnAction
{
    SHOWBOXALERT_MAX_HEIGHT = SCREEN_HEIGHT / 5 * 3;
    MSShowBoxAlert *showBoxAlert = [[MSShowBoxAlert alloc]initTitle:title TitleColorHexString:titleColorHexString BoxBgColorHexString:boxBgColorHexString TopBgImgName:topBgImgName TopBgImgWidth:topBgImgWidth TopBgImgHeight:topBgImgHeight Description:description DescriptionColorHexString:descriptionColorHexString   isTwoBottomBtn:isTwoBottomBtn MainBtnTitle:mainBtnTitle BtnBgColorHexString:btnBgColorHexString BtnTitleColorHexString:btnTitleColorHexString AnotherBtnTitle:anotherBtnTitle AnotherBtnBgColorHexString:anotherBtnBgColorHexString AnotherBtnTitleColorHexString:anotherBtnTitleColorHexString MainBtnAction:mainBtnAction AnotherBtnAction:anotherBtnAction];
    [[UIApplication sharedApplication].delegate.window addSubview:showBoxAlert];
}

+ (void)showAlertWithTitle:(NSString *)title TitleColorHexString:(NSString *)titleColorHexString subTitle:(NSString *)subTitle subTitleColorHexString:(NSString *)subTitleColorHexString BoxBgColorHexString:(NSString *)boxBgColorHexString TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description DescriptionColorHexString:(NSString *)descriptionColorHexString isTwoBottomBtn:(BOOL)isTwoBottomBtn MainBtnTitle:(NSString *)mainBtnTitle BtnBgColorHexString:(NSString *)btnBgColorHexString BtnTitleColorHexString:(NSString *)btnTitleColorHexString AnotherBtnTitle:(NSString *)anotherBtnTitle AnotherBtnBgColorHexString:(NSString *)anotherBtnBgColorHexString AnotherBtnTitleColorHexString:(NSString *)anotherBtnTitleColorHexString  MainBtnAction:(void(^)(void))mainBtnAction AnotherBtnAction:(void(^)(void))anotherBtnAction {
    SHOWBOXALERT_MAX_HEIGHT = SCREEN_HEIGHT / 5 * 3;
    MSShowBoxAlert *showBoxAlert = [[MSShowBoxAlert alloc] initWithTitle:title TitleColorHexString:titleColorHexString subTitle:subTitle subTitleColorHexString:subTitleColorHexString BoxBgColorHexString:boxBgColorHexString TopBgImgName:topBgImgName TopBgImgWidth:topBgImgWidth TopBgImgHeight:topBgImgHeight Description:description DescriptionColorHexString:descriptionColorHexString   isTwoBottomBtn:isTwoBottomBtn MainBtnTitle:mainBtnTitle BtnBgColorHexString:btnBgColorHexString BtnTitleColorHexString:btnTitleColorHexString AnotherBtnTitle:anotherBtnTitle AnotherBtnBgColorHexString:anotherBtnBgColorHexString AnotherBtnTitleColorHexString:anotherBtnTitleColorHexString MainBtnAction:mainBtnAction AnotherBtnAction:anotherBtnAction];
    [[UIApplication sharedApplication].delegate.window addSubview:showBoxAlert];
}

- (instancetype)initTitle:(NSString *)title TitleColorHexString:(NSString *)titleColorHexString BoxBgColorHexString:(NSString *)boxBgColorHexString TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description DescriptionColorHexString:(NSString *)descriptionColorHexString isTwoBottomBtn:(BOOL)isTwoBottomBtn MainBtnTitle:(NSString *)mainBtnTitle BtnBgColorHexString:(NSString *)btnBgColorHexString BtnTitleColorHexString:(NSString *)btnTitleColorHexString AnotherBtnTitle:(NSString *)anotherBtnTitle AnotherBtnBgColorHexString:(NSString *)anotherBtnBgColorHexString AnotherBtnTitleColorHexString:(NSString *)anotherBtnTitleColorHexString  MainBtnAction:(void(^)(void))mainBtnAction AnotherBtnAction:(void(^)(void))anotherBtnAction
{
    return [self initWithTitle:title TitleColorHexString:titleColorHexString subTitle:nil subTitleColorHexString:nil BoxBgColorHexString:boxBgColorHexString TopBgImgName:topBgImgName TopBgImgWidth:topBgImgWidth TopBgImgHeight:topBgImgHeight Description:description DescriptionColorHexString:descriptionColorHexString   isTwoBottomBtn:isTwoBottomBtn MainBtnTitle:mainBtnTitle BtnBgColorHexString:btnBgColorHexString BtnTitleColorHexString:btnTitleColorHexString AnotherBtnTitle:anotherBtnTitle AnotherBtnBgColorHexString:anotherBtnBgColorHexString AnotherBtnTitleColorHexString:anotherBtnTitleColorHexString MainBtnAction:mainBtnAction AnotherBtnAction:anotherBtnAction];
}

- (instancetype)initWithTitle:(NSString *)title TitleColorHexString:(NSString *)titleColorHexString subTitle:(NSString *)subTitle subTitleColorHexString:(NSString *)subTitleColorHexString BoxBgColorHexString:(NSString *)boxBgColorHexString TopBgImgName:(NSString *)topBgImgName TopBgImgWidth:(CGFloat)topBgImgWidth TopBgImgHeight:(CGFloat)topBgImgHeight Description:(NSString *)description DescriptionColorHexString:(NSString *)descriptionColorHexString isTwoBottomBtn:(BOOL)isTwoBottomBtn MainBtnTitle:(NSString *)mainBtnTitle BtnBgColorHexString:(NSString *)btnBgColorHexString BtnTitleColorHexString:(NSString *)btnTitleColorHexString AnotherBtnTitle:(NSString *)anotherBtnTitle AnotherBtnBgColorHexString:(NSString *)anotherBtnBgColorHexString AnotherBtnTitleColorHexString:(NSString *)anotherBtnTitleColorHexString  MainBtnAction:(void(^)(void))mainBtnAction AnotherBtnAction:(void(^)(void))anotherBtnAction
{
    self = [super init];
    if (self) {
        self.title = title;
        
        self.subTitle = subTitle;
        
        self.desc = description;
        self.descriptionColorHexString = descriptionColorHexString;
        self.isTwoBottomBtn = isTwoBottomBtn;
        self.topBgImgName = topBgImgName;
        self.topBgImgWidth = topBgImgWidth;
        self.topBgImgHeight = topBgImgHeight;
        self.mainBtnTitle = mainBtnTitle;
        self.anotherBtnTitle = anotherBtnTitle;
        self.mainBtnAction = mainBtnAction;
        self.anotherBtnAction = anotherBtnAction;
        self.titleColorHexString = titleColorHexString;
        
        self.subTitleColorHexString = subTitleColorHexString;
        
        self.boxBgColorHexString = boxBgColorHexString;
        self.btnBgColorHexString = btnBgColorHexString;
        self.btnTitleColorHexString = btnTitleColorHexString;
        self.anotherBtnBgColorHexString = anotherBtnBgColorHexString;
        self.anotherBtnTitleColorHexString = anotherBtnTitleColorHexString;
        [self setupUI];
    }
    return self;
}

- (void)setupUI
{
    self.frame = [UIScreen mainScreen].bounds;
    self.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.3/1.0];
    
    //获取内容高度
    CGFloat descHeight = [self _sizeofString:self.desc font:[UIFont systemFontOfSize:DescriptionFont] maxSize:CGSizeMake(self.frame.size.width - Ratio(120) - Ratio(56), 1000)].height;
    CGFloat descStringHeight = descHeight;
    descHeight = descHeight < 80 ? 80 : descHeight;
    
    //bgView实际高度
    CGFloat realHeight = descHeight + Ratio(238);
    if (isHiddenBottomBtn) {
        realHeight = descHeight + Ratio(182);
    }
    
    // 加上subtitle的高度
    if (self.subTitle.length) {
        realHeight += 20;
    }
    
    //bgView最大高度
    CGFloat maxHeight = SHOWBOXALERT_MAX_HEIGHT;
    
    //更新内容可否滑动显示
    BOOL scrollEnabled = NO;
    
    //重置bgView最大高度 设置更新内容可否滑动显示
    if (realHeight > SHOWBOXALERT_MAX_HEIGHT) {
        scrollEnabled = YES;
        descHeight = SHOWBOXALERT_MAX_HEIGHT - Ratio(238);
    }else
    {
        maxHeight = realHeight;
    }
    
    //backgroundView
    UIView *bgView = [[UIView alloc]init];
    bgView.center = self.center;
    bgView.bounds = CGRectMake(0, 0, self.frame.size.width - Ratio(60), maxHeight+Ratio(18));
    [self addSubview:bgView];
    
    //添加提示弹框
    UIView *updateView = [[UIView alloc]initWithFrame:CGRectMake(Ratio(30), Ratio(18), bgView.frame.size.width - Ratio(60), maxHeight)];
    updateView.backgroundColor = [UIColor colorWithHexString:self.boxBgColorHexString];
    updateView.layer.masksToBounds = YES;
    updateView.layer.cornerRadius = 4.0f;
    [bgView addSubview:updateView];
    
    UIButton *cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    cancelButton.frame = CGRectMake(updateView.frame.size.width - Ratio(20 + 10), Ratio(10), Ratio(21), Ratio(20));
    [cancelButton addTarget:self action:@selector(cancelAction) forControlEvents:UIControlEventTouchUpInside];
    [cancelButton setImage:UIImageMake(@"Closed_ShowBoxAlert") forState:UIControlStateNormal];
    cancelButton.hidden = isHiddenClosedBtn;
    [updateView addSubview:cancelButton];
    
    //20+90+10+28+10+descHeight+20+40+20 = 238+descHeight 内部元素高度计算bgView高度
    UIImageView *updateIcon = [[UIImageView alloc]initWithFrame:CGRectMake((updateView.frame.size.width - Ratio(self.topBgImgWidth)) * 0.5f, CGRectGetMaxY(cancelButton.frame), Ratio(self.topBgImgWidth), Ratio(self.topBgImgHeight))];
    updateIcon.image = [UIImage imageNamed:self.topBgImgName];
    [updateView addSubview:updateIcon];
    
    //顶部标题
    UILabel *titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(Ratio(15), Ratio(10) + CGRectGetMaxY(updateIcon.frame), updateView.frame.size.width - Ratio(30), Ratio(28))];
    titleLabel.font = FontBoldMake(16);
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = [NSString stringWithFormat:@"%@",self.title];
    titleLabel.textColor = [UIColor colorWithHexString:self.titleColorHexString];
    [updateView addSubview:titleLabel];
    
    //分割线
    UIView * lineView = [[UIView alloc] initWithFrame:CGRectMake(Ratio(20), Ratio(10) + CGRectGetMaxY(titleLabel.frame), updateView.frame.size.width - Ratio(40), 1)];
    lineView.backgroundColor = SELColor(216, 220, 228);
    lineView.hidden = YES;
    [updateView addSubview:lineView];
    
    //顶部子标题
    UILabel *subTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(Ratio(15), Ratio(10) + CGRectGetMaxY(titleLabel.frame), updateView.frame.size.width - Ratio(30), self.subTitle.length ? Ratio(20) : 0.0)];
    subTitleLabel.font = FontMake(12);
    subTitleLabel.textAlignment = NSTextAlignmentCenter;
    subTitleLabel.text = [NSString stringWithFormat:@"%@",self.subTitle ?: @""];
    subTitleLabel.textColor = [UIColor colorWithHexString:self.subTitleColorHexString];
    subTitleLabel.alpha = 0.5;
    [updateView addSubview:subTitleLabel];
    
    //内容
    UITextView *descTextView = [[UITextView alloc]initWithFrame:CGRectMake(Ratio(20), Ratio(22) + CGRectGetMaxY(subTitleLabel.frame), updateView.frame.size.width - Ratio(40), descHeight)];
    descTextView.textAlignment = descStringHeight > 15.0 ? NSTextAlignmentLeft : NSTextAlignmentCenter;
    descTextView.font = [UIFont systemFontOfSize:DescriptionFont];
    descTextView.textColor = [UIColor colorWithHexString:self.descriptionColorHexString];
    descTextView.textContainer.lineFragmentPadding = 0;
    descTextView.textContainerInset = UIEdgeInsetsMake(0, 0, 0, 0);
    descTextView.text = self.desc;
    descTextView.editable = NO;
    descTextView.selectable = NO;
    descTextView.scrollEnabled = scrollEnabled;
    descTextView.showsVerticalScrollIndicator = scrollEnabled;
    descTextView.showsHorizontalScrollIndicator = NO;
    [updateView addSubview:descTextView];
    
    if (scrollEnabled) {
        //若显示滑动条，提示可以有滑动条
        [descTextView flashScrollIndicators];
    }
    
    //确认按钮
    UIButton *secondButton = [UIButton buttonWithType:UIButtonTypeSystem];
    secondButton.backgroundColor = [UIColor colorWithHexString:self.btnBgColorHexString];
    secondButton.layer.masksToBounds = YES;
    secondButton.layer.cornerRadius = 2.0f;
    secondButton.titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    [secondButton addTarget:self action:@selector(mainAction) forControlEvents:UIControlEventTouchUpInside];
    [secondButton setTitle:self.mainBtnTitle forState:UIControlStateNormal];
    [secondButton setTitleColor:[UIColor colorWithHexString:self.btnTitleColorHexString] forState:UIControlStateNormal];
    [secondButton setHidden:isHiddenBottomBtn];
    
    CGFloat btnCommonWidth = updateView.frame.size.width - Ratio(80);
    CGFloat secondButtonWidth = [MSShowBoxAlert widthOfString:secondButton.titleLabel.text font:secondButton.titleLabel.font height:Ratio(48)] + Ratio(80);
    secondButtonWidth = secondButtonWidth > btnCommonWidth ? btnCommonWidth : secondButtonWidth;
    
    CGRect buttonFrame = CGRectMake( (updateView.frame.size.width - secondButtonWidth) * 0.5f, CGRectGetMaxY(descTextView.frame) + Ratio(30), secondButtonWidth, Ratio(48));
    if (descTextView.text.length == 0) {
        buttonFrame = CGRectMake( (updateView.frame.size.width - secondButtonWidth) * 0.5f,  CGRectGetMaxY(updateView.bounds) - Ratio(30) - Ratio(48), secondButtonWidth, Ratio(48));
    }
    
    if (self.isTwoBottomBtn) {//两个按钮的情况
        buttonFrame = CGRectMake(updateView.frame.size.width * 0.6 - Ratio(15), CGRectGetMaxY(descTextView.frame) + Ratio(20), updateView.frame.size.width * 0.4, Ratio(48));
        //取消按钮
        UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeSystem];
        firstButton.backgroundColor = [UIColor colorWithHexString:self.anotherBtnBgColorHexString];
        firstButton.frame = CGRectMake(Ratio(15), CGRectGetMaxY(descTextView.frame) + Ratio(20), buttonFrame.size.width, Ratio(48));
        firstButton.layer.borderColor = [UIColor colorWithHexString:self.anotherBtnTitleColorHexString].CGColor;
        firstButton.layer.borderWidth = 1.f;
        firstButton.layer.cornerRadius = 2.0f;
        firstButton.layer.masksToBounds = YES;
        firstButton.titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        [firstButton setHidden:isHiddenBottomBtn];
        [firstButton addTarget:self action:@selector(anotherAction) forControlEvents:UIControlEventTouchUpInside];
        [firstButton setTitle:self.anotherBtnTitle forState:UIControlStateNormal];
        [firstButton setTitleColor:[UIColor colorWithHexString:self.anotherBtnTitleColorHexString] forState:UIControlStateNormal];
        
        if (isHiddenBottomBtn) {
            CGRect tempFrame = CGRectMake(0, 0, 0, 0);
            firstButton.frame = tempFrame;
        }
        [updateView addSubview:firstButton];
    }
    
    
    secondButton.frame = buttonFrame;
    if (isHiddenBottomBtn) {
        CGRect tempFrame = CGRectMake(0, 0, 0, 0);
        secondButton.frame = tempFrame;
    }
    [updateView addSubview:secondButton];
    
    //显示更新
    [self showWithAlert:bgView];
}

/** 确定按钮点击事件 */
- (void)mainAction
{
    if (self.mainBtnAction != nil) {
        self.mainBtnAction();
        //        AppLog(@"执行主事件");
    }
    [self dismissAlert];
}

/** 确定按钮点击事件 */
- (void)anotherAction
{
    if (self.anotherBtnAction != nil) {
        self.anotherBtnAction();
        //        AppLog(@"执行另一个事件");
    }
    [self dismissAlert];
}


/** 取消按钮点击事件 */
- (void)cancelAction
{
    [self dismissAlert];
}



/**
 添加Alert入场动画
 @param alert 添加动画的View
 */
- (void)showWithAlert:(UIView*)alert{
    
    CAKeyframeAnimation* animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.duration = AnimationTimeInterval;
    
    NSMutableArray *values = [NSMutableArray array];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.2, 1.2, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.9, 0.9, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)]];
    animation.values = values;
    [alert.layer addAnimation:animation forKey:nil];
}


/** 添加Alert出场动画 */
- (void)dismissAlert{
    
    [UIView animateWithDuration:AnimationTimeInterval animations:^{
        self.transform = (CGAffineTransformMakeScale(1.5, 1.5));
        self.backgroundColor = [UIColor clearColor];
        self.alpha = 0;
    }completion:^(BOOL finished) {
        [self removeFromSuperview];
    } ];
    
}

/**
 计算字符串高度
 @param string 字符串
 @param font 字体大小
 @param maxSize 最大Size
 @return 计算得到的Size
 */
- (CGSize)_sizeofString:(NSString *)string font:(UIFont *)font maxSize:(CGSize)maxSize
{
    return [string boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:font} context:nil].size;
}


+(CGFloat)widthOfString:(NSString *)string font:(UIFont *)font height:(CGFloat)height
{
    NSDictionary * dict=[NSDictionary dictionaryWithObject: font forKey:NSFontAttributeName];
    CGRect rect=[string boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
    return rect.size.width;
}


@end
