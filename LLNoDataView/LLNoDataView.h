//
//  LLNoDataView.h
//  NoDataView
//
//  Created by LvJianfeng on 16/4/18.
//  Copyright © 2016年 LvJianfeng. All rights reserved.
//
//
//  新改动
/**
 *  去除固定大小的提示图
 *  修复提示文本的高度固定错误
 *
 */

#import <UIKit/UIKit.h>
//如果有什么不满足的可自行优化，添加哦
//根据自己的App需求，配置需要的图片，图片请勿放在此文件夹Resources/Bundle下
//如果放在Resources/Bundle下，请注意图片读取路径LLNoDataSrcName（）
//注意：如果是LLNoDataView的默认图片，则无需继续图片配置，且为空
#pragma mark 图片配置
/**
 *  没有数据：默认图（no_data_katong_）
 */
#define LLNoDataImageName @""

/**
 *  没有网络：默认图（network_xinhao_）
 */
#define LLNoInternetImageName @""

/**
 *  其他状态
 */
#define LLOtherStatusImageName @""

#pragma mark  配置结束
#pragma mark -

@class LLLabel;

typedef enum
{
    LLVerticalAlignmentTop = 0, // default
    LLVerticalAlignmentMiddle,
    LLVerticalAlignmentBottom,
} LLVerticalAlignment;

typedef enum
{
    LLNoInternet = 0, // default
    LLNoData,
} LLNoDataViewType;

@protocol LLNoDataViewTouchDelegate <NSObject>
@optional
- (void) didTouchLLNoDataView;
@end

@interface LLNoDataView : UIView

/**
 *  没有数据
 *
 *  @param description 描述信息
 *  @param canTouch    是否可点击
 */
- (instancetype)initNoDataWithFrame:(CGRect)frame description:(NSString *)description canTouch:(BOOL)isCanTouch;

/**
 *  没有网络
 *
 *  @param description 描述信息
 *  @param canTouch    是否可点击
 */
- (instancetype)initNoInternetWithFrame:(CGRect)frame description:(NSString *)description canTouch:(BOOL)isCanTouch;

/**
 *  自定义提示图片
 *
 *  @param image       图片对象
 *  @param description 描述信息
 *  @param canTouch    是否可点击
 */
- (instancetype)initImageWithFrame:(CGRect)frame image:(UIImage *)image description:(NSString *)description canTouch:(BOOL)isCanTouch;

/**
 *  自定义提示图片（ImageNamed）
 *
 *  @param imageName   图片名称
 *  @param description 描述信息
 *  @param canTouch    是否可点击
 */
- (instancetype)initImageNameWithFrame:(CGRect)frame imageName:(NSString *)imageName description:(NSString *)description canTouch:(BOOL)isCanTouch;

/**
 *  可视按钮点击重新加载
 *
 *  @param imageName        图片名称
 *  @param description      描述信息
 *  @param LLNoDataViewType 状态类型
 *  @param reloadBtnTitle   重新加载按钮文本
 */
- (instancetype)initReloadBtnWithFrame:(CGRect)frame LLNoDataViewType:(LLNoDataViewType)type description:(NSString *)description reloadBtnTitle:(NSString *)title;


@property (assign, nonatomic) id<LLNoDataViewTouchDelegate> delegate;

//提示文本显示Label
@property (weak, nonatomic)   LLLabel *tipLabel;
@end


@interface LLLabel : UILabel
@property (assign, nonatomic) LLVerticalAlignment llverticalAlignment;
@end

