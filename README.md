# MSShowBoxAlert
封装可自定义Alert弹框<br/>
![image](https://github.com/sunmean/MSShowBoxAlert/blob/master/record201910281735.gif)


---
简要介绍
==============
项目中封装了七种自定义的方法弹框，可以根据实际需要选择便捷的方法调用。七种方法中，越往后的方法，可自定义的属性越多，当然使用设置也会越麻烦。示例可以查看上面的动图。<br/>

使用方法
==============

### 1.调用头文件
```objc
#import "MSShowBoxAlert.h"
```

### 2.导入方法文件夹
导入MSShowBoxAlertDemo项目中的MSShowBoxAlert的文件夹

### 3.方法调用
```objc
- (void)btnClick:(UIButton *)sender
{
    switch (sender.tag) {
        case 100:{//方法一
            [MSShowBoxAlert showAlertWithTitle:@"升级提示" subTitle:@"V2.0版本主要更新内容" description:@"1.xxxxxxxxxxxxxxxxxxxxxxxx\n2.xxxxxxxxxxxxxxxxxxxxxxxx\n3.xxxxxxxxxxxxxxxxxxxxxxxx\n4.xxxxxxxxxxxxxxxxxxxxxxxx\n5.xxxxxxxxxxxxxxxxxxxxxxxx" MainBtnTitle:@"知道了" MainBtnAction:^{
                NSLog(@"点击了方法一的按钮");
            }];
        }
            break;
        case 101:{//方法二
            [MSShowBoxAlert showAlertWithTitle:@"温馨提示" TopBgImgName:@"Wallet_Home_TipPic" TopBgImgWidth:33.0f TopBgImgHeight:31.0f Description:@"由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱" MainBtnTitle:@"确定" MainBtnAction:^{
                NSLog(@"点击了方法二的按钮");
            }];
        }
            break;
        case 102:{//方法三
            [MSShowBoxAlert showAlertWithTitle:@"登录过期，请重新登录！" TitleColorHexString:@"#C5000C" showBoxHeight:220 TopBgImgName:@"Wallet_Home_TipPic" TopBgImgWidth:33.f TopBgImgHeight:31.f Description:@"" MainBtnTitle:@"立即登录" MainBtnAction:^{
               NSLog(@"点击了方法三的按钮");
            }];
        }
            break;
        case 103:{//方法四
            [MSShowBoxAlert showAlertWithTitle:@"升级公告" TitleColorHexString:@"#333333" isHiddenClosedBtn:YES isHiddenBottomBtn:NO showBoxHeight:280.f TopBgImgName:@"Wallet_Home_TipPic" TopBgImgWidth:33.f TopBgImgHeight:31.f Description:@"程序正在升级维护！维护期间，程序将无法运行。给您造成不便，敬请谅解！" MainBtnTitle:@"确定" MainBtnAction:^{
                NSLog(@"点击了方法四的按钮");
            }];
        }
            break;
        case 104:{//方法五
            [MSShowBoxAlert showAlertWithTitle:@"温馨提示" TopBgImgName:@"Wallet_Home_TipPic" TopBgImgWidth:33.0f TopBgImgHeight:31.0f Description:@"文字内容文字内容文字内容文字内容文字内容文字内容" DescriptionColorHexString:@"#F6F6F6" isTwoBottomBtn:YES MainBtnTitle:@"确定" AnotherBtnTitle:@"取消" MainBtnAction:^{
                NSLog(@"点击了方法五的右边按钮");
            } AnotherBtnAction:^{
                NSLog(@"点击了方法五的左边按钮");
            }];
        }
            break;
        case 105:{//方法六
            [MSShowBoxAlert showAlertWithTitle:@"通知" TitleColorHexString:@"#00FFFF" BoxBgColorHexString:@"#FFFFFF" TopBgImgName:@"Wallet_Home_TipPic" TopBgImgWidth:33.0f TopBgImgHeight:31.0f Description:@"通知内容文字内容文字内容文字内容文字内容文字内容文字内容" DescriptionColorHexString:@"#666666" isTwoBottomBtn:YES MainBtnTitle:@"知道了" BtnBgColorHexString:@"#E2E2E2" BtnTitleColorHexString:@"#555555" AnotherBtnTitle:@"关闭" AnotherBtnBgColorHexString:@"#FFFFFF" AnotherBtnTitleColorHexString:@"#333333" MainBtnAction:^{
                NSLog(@"点击了方法六的右边按钮");
            } AnotherBtnAction:^{
                NSLog(@"点击了方法六的左边按钮");
            }];
        }
            break;
        case 106:{//方法七
            [MSShowBoxAlert showAlertWithTitle:@"涨价通知" TitleColorHexString:@"#FF00FF" subTitle:@"重要事情说六遍" subTitleColorHexString:@"#FF0000" BoxBgColorHexString:@"#FFFFFF" TopBgImgName:@"Wallet_Home_TipPic" TopBgImgWidth:33.0f TopBgImgHeight:31.0f Description:@"由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱\n由于近段时间猪肉疯涨,皮蛋瘦肉粥要涨2块钱" DescriptionColorHexString:@"#666666" isTwoBottomBtn:YES MainBtnTitle:@"知道了" BtnBgColorHexString:@"#E2E2E2" BtnTitleColorHexString:@"#555555" AnotherBtnTitle:@"关闭" AnotherBtnBgColorHexString:@"#FFFFFF" AnotherBtnTitleColorHexString:@"#333333" MainBtnAction:^{
                NSLog(@"点击了方法七的右边按钮");
            } AnotherBtnAction:^{
                NSLog(@"点击了方法七的左边按钮");
            }];
        }
            break;
        default:
            break;
    }
}
```

### 4.方法参数说明
```objc
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
 .可选两个按钮并自定义颜色的提示弹框
 
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

```

### 5.温馨提示
==============
如果由于旧版本Xcode导致无法运行，请在Xcode顶部菜单栏上面选择“File”->"Workspace Settings..."->"Build System"->"Legacy Build System"。设置一下就可以兼容旧版本Xcode生成的项目引起的报错。


### 6.许可证
==============
MSShowBoxAlert 使用 MIT 许可证，详情见 LICENSE 文件。
