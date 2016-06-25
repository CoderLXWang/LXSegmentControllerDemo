
//
//  Const.h
//  BuDeJie
//
//  Created by yz on 15/12/5.
//  Copyright © 2015年 yz. All rights reserved.
//

#ifndef Const_h
#define Const_h

#import "LXSegmentController.h"

// 导航条高度
static CGFloat const LXNavBarH = 64;

// 标题滚动视图的高度
static CGFloat const LXTitleScrollViewH = 44;

// 标题缩放比例
static CGFloat const LXTitleTransformScale = 1.3;

// 下划线默认高度
static CGFloat const LXUnderLineH = 2;

#define LXScreenW [UIScreen mainScreen].bounds.size.width
#define LXScreenH [UIScreen mainScreen].bounds.size.height

// 默认标题字体
#define LXTitleFont [UIFont systemFontOfSize:15]

// 默认标题间距
static CGFloat const margin = 10;

static NSString * const ID = @"cell";

// 标题被点击或者内容滚动完成，会发出这个通知，监听这个通知，可以做自己想要做的事情，比如加载数据
static NSString * const LXDisplayViewClickOrScrollDidFinshNote = @"LXDisplayViewClickOrScrollDidFinshNote";

// 重复点击通知
static NSString * const LXDisplayViewRepeatClickTitleNote = @"LXDisplayViewRepeatClickTitleNote";


#endif /* Const_h */
