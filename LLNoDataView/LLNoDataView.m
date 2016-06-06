//
//  LLNoDataView.m
//  NoDataView
//
//  Created by LvJianfeng on 16/4/18.
//  Copyright © 2016年 LvJianfeng. All rights reserved.
//

#import "LLNoDataView.h"

#define LLSCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)

#define LLImageWithNamed(name) [UIImage imageNamed:name]

//Remove
//#define LLIconWidth LLSCREEN_WIDTH*0.33
//#define LLIconHeight LLSCREEN_WIDTH*0.33

#define LLDescriptionFontSize 14.f
#define LLDescriptionHeight 80.f
#define LLDescriptionTopSpace 10.f

#define LLNoDataSrcName(file) [@"LLNoData.bundle" stringByAppendingPathComponent:file]
#define LLColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation LLNoDataView

- (instancetype)initNoDataWithFrame:(CGRect)frame description:(NSString *)description canTouch:(BOOL)isCanTouch{
    self = [super initWithFrame:frame];
    if (self) {
        UIImage *iconImage;
        if (LLNoDataImageName.length>0) {
            iconImage = LLImageWithNamed(LLNoDataImageName);
        }else{
            iconImage = LLImageWithNamed(LLNoDataSrcName(@"no_data_katong_"));
        }
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width*0.5-iconImage.size.width*0.5, frame.size.height*0.5-iconImage.size.height, iconImage.size.width, iconImage.size.height)];
        
        imageView.image = iconImage;
        [self addSubview:imageView];
        
        LLLabel *tipLabel = [[LLLabel alloc] initWithFrame:CGRectMake(10, imageView.center.y+iconImage.size.height*0.5+LLDescriptionTopSpace, LLSCREEN_WIDTH-20, LLDescriptionHeight)];
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
        UIImage *iconImage;
        if (LLNoInternetImageName.length>0) {
            iconImage = LLImageWithNamed(LLNoInternetImageName);
        }else{
            iconImage = LLImageWithNamed(LLNoDataSrcName(@"network_xinhao_"));
        }
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width*0.5-iconImage.size.width*0.5, frame.size.height*0.5-iconImage.size.height, iconImage.size.width, iconImage.size.height)];
        imageView.image = iconImage;
        [self addSubview:imageView];
        
        LLLabel *tipLabel = [[LLLabel alloc] initWithFrame:CGRectMake(10, imageView.center.y+iconImage.size.height*0.5+LLDescriptionTopSpace, LLSCREEN_WIDTH-20, LLDescriptionHeight)];
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
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width*0.5-image.size.width*0.5, frame.size.height*0.5-image.size.height, image.size.width, image.size.height)];
        imageView.image = image;
        [self addSubview:imageView];
        
        LLLabel *tipLabel = [[LLLabel alloc] initWithFrame:CGRectMake(10, imageView.center.y+image.size.height*0.5+LLDescriptionTopSpace, LLSCREEN_WIDTH-20, LLDescriptionHeight)];
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
        UIImage *iconImage = LLImageWithNamed(imageName);
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width*0.5-iconImage.size.width*0.5, frame.size.height*0.5-iconImage.size.height, iconImage.size.width, iconImage.size.height)];
        imageView.image = iconImage;
        [self addSubview:imageView];
        
        LLLabel *tipLabel = [[LLLabel alloc] initWithFrame:CGRectMake(10, imageView.center.y+iconImage.size.height*0.5+LLDescriptionTopSpace-20, LLSCREEN_WIDTH, LLDescriptionHeight)];
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

- (instancetype)initReloadBtnWithFrame:(CGRect)frame LLNoDataViewType:(LLNoDataViewType)type description:(NSString *)description reloadBtnTitle:(NSString *)title
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImage *iconImage;
        if (type == LLNoInternet) {
            iconImage = LLImageWithNamed(LLNoInternetImageName.length>0?LLNoInternetImageName:LLNoDataSrcName(@"no_data_katong_"));
        }
        
        if (type == LLNoData) {
            iconImage = LLImageWithNamed(LLNoDataImageName.length>0?LLNoDataImageName:LLNoDataSrcName(@"network_xinhao_"));
        }
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width*0.5-iconImage.size.width*0.5, frame.size.height*0.5-iconImage.size.height, iconImage.size.width, iconImage.size.height)];
        imageView.image = iconImage;
        
        
        [self addSubview:imageView];
        
        
        CGSize tipLabelSize = [self sizeWithString:description font:[UIFont systemFontOfSize:LLDescriptionFontSize] constrainedToWidth:LLSCREEN_WIDTH-20];
        LLLabel *tipLabel = [[LLLabel alloc] initWithFrame:CGRectMake(10, imageView.center.y+iconImage.size.height*0.5+LLDescriptionTopSpace, LLSCREEN_WIDTH-20, tipLabelSize.height)];
        tipLabel.textColor = LLColorFromRGB(0x999999);
        tipLabel.font = [UIFont systemFontOfSize:LLDescriptionFontSize];
        tipLabel.textAlignment = NSTextAlignmentCenter;
        tipLabel.llverticalAlignment = LLVerticalAlignmentTop;
        tipLabel.text = description;
        [self addSubview:tipLabel];
        self.tipLabel = tipLabel;
        
        if (title && title.length>0) {
            CGSize btnSize = [self sizeWithString:title font:[UIFont systemFontOfSize:LLDescriptionFontSize] constrainedToWidth:LLSCREEN_WIDTH];
            CGFloat btnWidth = btnSize.width + 30;
            UIButton *btnTouchView = [[UIButton alloc] initWithFrame:CGRectMake(LLSCREEN_WIDTH*0.5 - btnWidth*0.5, tipLabel.center.y + LLDescriptionHeight * 0.5, btnWidth, btnSize.height+20)];
            btnTouchView.layer.borderColor = LLColorFromRGB(0x999999).CGColor;
            btnTouchView.layer.borderWidth = 0.5;
            btnTouchView.layer.cornerRadius = (btnSize.height+20) * 0.5;
            btnTouchView.titleLabel.font = [UIFont systemFontOfSize:LLDescriptionFontSize];
            [btnTouchView setTitleColor:LLColorFromRGB(0x999999) forState:UIControlStateNormal];
            [btnTouchView setTitle:title forState:UIControlStateNormal];
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

#pragma mark - 计算文本
/**
 *  @brief 计算文字的大小
 *
 *  @param font  字体(默认为系统字体)
 *  @param width 约束宽度
 */
- (CGSize)sizeWithString:(NSString *)string font:(UIFont *)font constrainedToWidth:(CGFloat)width
{
    UIFont *textFont = font ? font : [UIFont systemFontOfSize:[UIFont systemFontSize]];
    
    CGSize textSize;
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED < 70000
    if ([string respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
        NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
        paragraph.lineBreakMode = NSLineBreakByWordWrapping;
        NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                     NSParagraphStyleAttributeName: paragraph};
        textSize = [string boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                      options:(NSStringDrawingUsesLineFragmentOrigin |
                                               NSStringDrawingTruncatesLastVisibleLine)
                                   attributes:attributes
                                      context:nil].size;
    } else {
        textSize = [string sizeWithFont:textFont
                    constrainedToSize:CGSizeMake(width, CGFLOAT_MAX)
                        lineBreakMode:NSLineBreakByWordWrapping];
    }
#else
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineBreakMode = NSLineBreakByWordWrapping;
    NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                 NSParagraphStyleAttributeName: paragraph};
    textSize = [string boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                  options:(NSStringDrawingUsesLineFragmentOrigin |
                                           NSStringDrawingTruncatesLastVisibleLine)
                               attributes:attributes
                                  context:nil].size;
#endif
    
    return CGSizeMake(ceil(textSize.width), ceil(textSize.height));
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
