//
//  QZBaseProgressView.h
//  QZPieProgressView
//
//  Created by 臧乾坤 on 2018/1/11.
//  Copyright © 2018年 QuentinZang. All rights reserved.
//

#import <UIKit/UIKit.h>

#define QZColorMaker(r, g, b, a) [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:(a)]

#define QZProgressViewItemMargin 10

#define QZProgressViewFontScale (MIN(self.frame.size.width, self.frame.size.height) / 100.0)
// 背景颜色
#define QZProgressViewBackgroundColor QZColorMaker(240, 240, 240, 0.9)

@interface QZBaseProgressView : UIView

@property (assign, nonatomic) CGFloat progress;

- (void)setCenterProgressText:(NSString *)text withAttributes:(NSDictionary *)attributes;

- (void)dismiss;

+ (id)progressView;

@end
