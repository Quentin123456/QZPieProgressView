//
//  QZLoopProgressView.m
//  QZPieProgressView
//
//  Created by 臧乾坤 on 2018/1/11.
//  Copyright © 2018年 QuentinZang. All rights reserved.
//

#import "QZLoopProgressView.h"

@implementation QZLoopProgressView

- (void)drawRect:(CGRect)rect {
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGFloat xCenter = rect.size.width * 0.5;
    CGFloat yCenter = rect.size.height * 0.5;
    [[UIColor whiteColor] set];
    
    CGContextSetLineWidth(ctx, 15 * QZProgressViewFontScale);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    CGFloat to = - M_PI * 0.5 + self.progress * M_PI * 2 + 0.05; // 初始值0.05
    CGFloat radius = MIN(rect.size.width, rect.size.height) * 0.5 - QZProgressViewItemMargin;
    CGContextAddArc(ctx, xCenter, yCenter, radius, - M_PI * 0.5, to, 0);
    CGContextStrokePath(ctx);
    
    // 进度数字
    NSString *progressStr = [NSString stringWithFormat:@"%.0f", self.progress * 100];
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    attributes[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20 * QZProgressViewFontScale];
    attributes[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    [self setCenterProgressText:progressStr withAttributes:attributes];
    
}

@end
