//
//  LLNoDataView.m
//  NoDataView
//
//  Created by LvJianfeng on 16/4/18.
//  Copyright © 2016年 LvJianfeng. All rights reserved.
//

#import "LLNoDataView.h"

#define LLSCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)

#define LLIconWidth LLSCREEN_WIDTH*0.33
#define LLIconHeight LLSCREEN_WIDTH*0.33

#define LLDescriptionFontSize 16.f
#define LLDescriptionHeight 80.f
#define LLDescriptionTopSpace 10.f

#define LLNoDataSrcName(file) [@"LLNoData.bundle" stringByAppendingPathComponent:file]
#define LLColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation LLNoDataView

- (instancetype)initNoDataWithFrame:(CGRect)frame description:(NSString *)description canTouch:(BOOL)isCanTouch{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width*0.5-LLIconWidth*0.5, frame.size.height*0.5-LLIconHeight*0.5, LLIconWidth, LLIconHeight)];
        imageView.image = [UIImage imageNamed:LLNoDataSrcName(@"no_data_katong_")];
        [self addSubview:imageView];
        
        LLLabel *tipLabel = [[LLLabel alloc] initWithFrame:CGRectMake(0, imageView.center.y+LLIconHeight*0.5+LLDescriptionTopSpace, LLSCREEN_WIDTH, LLDescriptionHeight)];
        tipLabel.textColor = LLColorFromRGB(0x999999);
        tipLabel.font = [UIFont systemFontOfSize:LLDescriptionFontSize];
        tipLabel.textAlignment = NSTextAlignmentCenter;
        tipLabel.llverticalAlignment = LLVerticalAlignmentTop;
        tipLabel.text = description;
        [self addSubview:tipLabel];
        self.tipLabel = tipLabel;
        
        if (isCanTouch) {
            UIButton *btnTouchView = [[UIButton alloc] initWithFrame:frame];
            [btnTouchView addTarget:self action:@selector(windowTouchAction) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:btnTouchView];
        }
        
    }
    return self;
}

- (instancetype)initNoInternetWithFrame:(CGRect)frame description:(NSString *)description canTouch:(BOOL)isCanTouch{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width*0.5-LLIconWidth*0.5, frame.size.height*0.5-LLIconHeight*0.5, LLIconWidth, LLIconHeight)];
        imageView.image = [UIImage imageNamed:LLNoDataSrcName(@"network_xinhao_")];
        [self addSubview:imageView];
        
        LLLabel *tipLabel = [[LLLabel alloc] initWithFrame:CGRectMake(0, imageView.center.y+LLIconHeight*0.5+LLDescriptionTopSpace, LLSCREEN_WIDTH, LLDescriptionHeight)];
        tipLabel.textColor = LLColorFromRGB(0x999999);
        tipLabel.font = [UIFont systemFontOfSize:LLDescriptionFontSize];
        tipLabel.textAlignment = NSTextAlignmentCenter;
        tipLabel.llverticalAlignment = LLVerticalAlignmentTop;
        tipLabel.text = description;
        [self addSubview:tipLabel];
        self.tipLabel = tipLabel;
        
        if (isCanTouch) {
            UIButton *btnTouchView = [[UIButton alloc] initWithFrame:frame];
            [btnTouchView addTarget:self action:@selector(windowTouchAction) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:btnTouchView];
        }
    }
    return self;
}

- (instancetype)initImageWithFrame:(CGRect)frame image:(UIImage *)image description:(NSString *)description canTouch:(BOOL)isCanTouch{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width*0.5-LLIconWidth*0.5, frame.size.height*0.5-LLIconHeight*0.5, LLIconWidth, LLIconHeight)];
        imageView.image = image;
        [self addSubview:imageView];
        
        LLLabel *tipLabel = [[LLLabel alloc] initWithFrame:CGRectMake(0, imageView.center.y+LLIconHeight*0.5+LLDescriptionTopSpace, LLSCREEN_WIDTH, LLDescriptionHeight)];
        tipLabel.textColor = LLColorFromRGB(0x999999);
        tipLabel.font = [UIFont systemFontOfSize:LLDescriptionFontSize];
        tipLabel.textAlignment = NSTextAlignmentCenter;
        tipLabel.llverticalAlignment = LLVerticalAlignmentTop;
        tipLabel.text = description;
        [self addSubview:tipLabel];
        self.tipLabel = tipLabel;
        
        if (isCanTouch) {
            UIButton *btnTouchView = [[UIButton alloc] initWithFrame:frame];
            [btnTouchView addTarget:self action:@selector(windowTouchAction) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:btnTouchView];
        }
    }
    return self;
}

- (instancetype)initImageNameWithFrame:(CGRect)frame imageName:(NSString *)imageName description:(NSString *)description canTouch:(BOOL)isCanTouch
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width*0.5-LLIconWidth*0.5, frame.size.height*0.5-LLIconHeight*0.5, LLIconWidth, LLIconHeight)];
        imageView.image = [UIImage imageNamed:imageName];
        [self addSubview:imageView];
        
        LLLabel *tipLabel = [[LLLabel alloc] initWithFrame:CGRectMake(0, imageView.center.y+LLIconHeight*0.5+LLDescriptionTopSpace, LLSCREEN_WIDTH, LLDescriptionHeight)];
        tipLabel.textColor = LLColorFromRGB(0x999999);
        tipLabel.font = [UIFont systemFontOfSize:LLDescriptionFontSize];
        tipLabel.textAlignment = NSTextAlignmentCenter;
        tipLabel.llverticalAlignment = LLVerticalAlignmentTop;
        tipLabel.text = description;
        [self addSubview:tipLabel];
        self.tipLabel = tipLabel;
        
        if (isCanTouch) {
            UIButton *btnTouchView = [[UIButton alloc] initWithFrame:frame];
            [btnTouchView addTarget:self action:@selector(windowTouchAction) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:btnTouchView];
        }
    }
    return self;
}

//空数据View的点击响应协议
- (void)windowTouchAction{
    if ([self.delegate respondsToSelector:@selector(didTouchLLNoDataView)]) {
        [self.delegate didTouchLLNoDataView];
    }
}
@end


@implementation LLLabel
- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.llverticalAlignment = LLVerticalAlignmentMiddle;
    }
    return self;
}

- (void)setLlverticalAlignment:(LLVerticalAlignment)llverticalAlignment{
    _llverticalAlignment = llverticalAlignment;
    [self setNeedsDisplay];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    switch (self.llverticalAlignment) {
        case LLVerticalAlignmentTop:
            textRect.origin.y = bounds.origin.y;
            break;
        case LLVerticalAlignmentBottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
            break;
        case LLVerticalAlignmentMiddle:
            // Fall through.
        default:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }
    return textRect;
}

-(void)drawTextInRect:(CGRect)requestedRect {
    CGRect actualRect = [self textRectForBounds:requestedRect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:actualRect];
}
@end
