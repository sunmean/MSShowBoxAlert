//
//  ViewController.m
//  MSShowBoxAlertDemo
//
//  Created by SongMin on 2019/10/28.
//  Copyright © 2019 lovsoft. All rights reserved.
//

#import "ViewController.h"
#import "MSShowBoxAlert.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *btnTitles = @[@"可改信息标题单按钮",@"可改顶图单按钮",@"可调高度单按钮",@"可隐藏按钮弹框",@"可改顶图双按钮",@"可改按钮颜色双按钮",@"可改文字颜色双按钮"];
    
    for (NSInteger i = 0 ;i < 7; i++) {
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(80, 80 + i * ([UIScreen mainScreen].bounds.size.height / 25 + 40), 230, 40);
        btn.tag = 100 + i;
        UIColor *randomColor = [UIColor colorWithRed:arc4random() % 256 / 255.0f green:arc4random() % 256 / 255.0f blue:arc4random() % 256 / 255.0f alpha:1.0f];
        btn.layer.borderColor = randomColor.CGColor;
        btn.layer.borderWidth = 1.f;
        btn.layer.cornerRadius = 4;
        btn.layer.masksToBounds = YES;
        NSString *btnTitle = [NSString stringWithFormat:@"%@",btnTitles[i]];
        [btn setTitle:btnTitle forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:14.f];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }

}


#pragma mark - 方法调用示例
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

@end
