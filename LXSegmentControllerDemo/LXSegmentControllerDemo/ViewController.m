//
//  ViewController.m
//  LXSegmentControllerDemo
//
//  Created by sharejoy_lx on 16-06-08.
//  Copyright © 2016年 shangbin. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"滑动视图";
    self.view.backgroundColor = [UIColor whiteColor];
    
    //什么都不设置, 默认样式
    [self setUpAllViewController];
    
    
    //需设置TestViewController中的tableView高度为[UIScreen mainScreen].bounds.size.height - 64- 顶部高度
    //传入View
//    [self demo1];
    
    //传入title, 定宽定高
//    [self demo2];
    
    //需设置TestViewController中的tableView高度为[UIScreen mainScreen].bounds.size.height - 64- 44
    //传入title, 使用下标样式
//    [self demo3];
    
    //传入title, 使用覆盖样式
//    [self demo4];
}

- (void)demo4 {
    [self setUpTitleEffect:^(UIColor *__autoreleasing *titleScrollViewColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIFont *__autoreleasing *titleFont, CGFloat *titleHeight, CGFloat *titleWidth) {
        
        // 设置标题字体
        *titleFont = [UIFont systemFontOfSize:20];
    }];
    
    [self setUpCoverEffect:^(BOOL *isShowTitleCover, UIColor *__autoreleasing *coverColor, CGFloat *coverCornerRadius) {
        *isShowTitleCover = YES;
        *coverColor = [UIColor grayColor];
        *coverCornerRadius = 10.0;
    }];
}

- (void)demo3 {
    [self setUpTitleEffect:^(UIColor *__autoreleasing *titleScrollViewColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIFont *__autoreleasing *titleFont, CGFloat *titleHeight, CGFloat *titleWidth) {
        
        // 设置标题字体
        *titleFont = [UIFont systemFontOfSize:20];
    }];
    
    [self setUpUnderLineEffect:^(BOOL *isShowUnderLine, BOOL *isDelayScroll, CGFloat *underLineH, CGFloat *underLineW, UIColor *__autoreleasing *underLineColor) {
        // 是否显示标签
        *isShowUnderLine = YES;
        
        // 标题填充模式
        *underLineColor = [UIColor redColor];
    }];
}

- (void)demo1 {
    NSMutableArray *array = [NSMutableArray array];
    for (NSInteger i = 0; i < 12; i++) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 80)];
        view.backgroundColor = [UIColor colorWithRed:random()%255/255.0 green:random()%255/255.0 blue:random()%255/255.0 alpha:1];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 100, 30)];
        label.text = [NSString stringWithFormat:@"这是个View%zd", i+1];
        
        
        if (i == 1) {
            UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)];
            imgView.image = [UIImage imageNamed:@"1.jpg"];
            [view addSubview:imgView];
        }
        [view addSubview:label];
        
        [array addObject:view];
    }
    
    
    [self setTitleViewArrayWith:[array copy] size:CGSizeMake(150, 80)];
    
    [self setUpUnderLineEffect:^(BOOL *isShowUnderLine, BOOL *isDelayScroll, CGFloat *underLineH, CGFloat *underLineW, UIColor *__autoreleasing *underLineColor) {
        // 是否显示标签
        *isShowUnderLine = YES;
        
        // 标题填充模式
        *underLineColor = [UIColor redColor];
        //        *underLineW = 100;
    }];
    
    self.scrollAnimation = YES;
}

- (void)demo2 {
    
    
    [self setUpTitleEffect:^(UIColor *__autoreleasing *titleScrollViewColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIFont *__autoreleasing *titleFont, CGFloat *titleHeight, CGFloat *titleWidth) {
        
        // 设置标题字体
        *titleFont = [UIFont systemFontOfSize:20];
        *titleHeight = 80;
        *titleWidth = 100;
    }];
    
    [self setUpUnderLineEffect:^(BOOL *isShowUnderLine, BOOL *isDelayScroll, CGFloat *underLineH, CGFloat *underLineW, UIColor *__autoreleasing *underLineColor) {
        // 是否显示标签
        *isShowUnderLine = YES;
        
        // 标题填充模式
        *underLineColor = [UIColor redColor];
        //        *underLineW = 80;
    }];
}

// 添加所有子控制器
- (void)setUpAllViewController
{
    
    TestViewController *wordVc1 = [[TestViewController alloc] init];
    wordVc1.title = @"界sdasd1";
    [self addChildViewController:wordVc1];
    
    
    TestViewController *wordVc2 = [[TestViewController alloc] init];
    wordVc2.title = @"界2";
    [self addChildViewController:wordVc2];
    //
    
    TestViewController *wordVc3 = [[TestViewController alloc] init];
    wordVc3.title = @"界skadjakd3";
    [self addChildViewController:wordVc3];
    
    TestViewController *wordVc4 = [[TestViewController alloc] init];
    wordVc4.title = @"界面4";
    [self addChildViewController:wordVc4];
    
    
    TestViewController *allVc = [[TestViewController alloc] init];
    allVc.title = @"界面界面界面5";
    [self addChildViewController:allVc];
    
    TestViewController *videoVc = [[TestViewController alloc] init];
    videoVc.title = @"界面6";
    [self addChildViewController:videoVc];
    
    
    TestViewController *voiceVc = [[TestViewController alloc] init];
    voiceVc.title = @"界面7";
    [self addChildViewController:voiceVc];
    
    
    TestViewController *pictureVc = [[TestViewController alloc] init];
    pictureVc.title = @"界面8";
    [self addChildViewController:pictureVc];
    
    TestViewController *wordVc = [[TestViewController alloc] init];
    wordVc.title = @"界面9";
    [self addChildViewController:wordVc];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
