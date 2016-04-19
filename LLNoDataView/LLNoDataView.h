//
//  LLNoDataView.h
//  NoDataView
//
//  Created by LvJianfeng on 16/4/18.
//  Copyright © 2016年 LvJianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    LLVerticalAlignmentTop = 0, // default
    LLVerticalAlignmentMiddle,
    LLVerticalAlignmentBottom,
} LLVerticalAlignment;

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

@property (assign, nonatomic) id<LLNoDataViewTouchDelegate> delegate;
@end


@interface LLLabel : UILabel
@property (assign, nonatomic) LLVerticalAlignment llverticalAlignment;
@end

