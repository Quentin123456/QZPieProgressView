//
//  QZBallProgressView.m
//  QZPieProgressView
//
//  Created by 臧乾坤 on 2018/1/11.
//  Copyright © 2018年 QuentinZang. All rights reserved.
//

#import "QZBallProgressView.h"

@implementation QZBallProgressView

- (void)drawRect:(CGRect)rect {
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGFloat xCenter = rect.size.width * 0.5;
    CGFloat yCenter = rect.size.height * 0.5;
    [[UIColor whiteColor] set];
    
    CGFloat radius = MIN(rect.size.width * 0.5, rect.size.height * 0.5) - QZProgressViewItemMargin;
    
    CGFloat w = radius * 2 + QZProgressViewItemMargin;
    CGFloat h = w;
    CGFloat x = (rect.size.width - w) * 0.5;
    CGFloat y = (rect.size.height - h) * 0.5;
    CGContextAddEllipseInRect(ctx, CGRectMake(x, y, w, h));
    CGContextFillPath(ctx);
    
    [[UIColor grayColor] set];
    CGFloat startAngle = M_PI * 0.5 - self.progress * M_PI;
    CGFloat endAngle = M_PI * 0.5 + self.progress * M_PI;
    CGContextAddArc(ctx, xCenter, yCenter, radius, startAngle, endAngle, 0);
    CGContextFillPath(ctx);
    
    // 进度数字
    NSString *progressStr = [NSString stringWithFormat:@"%.0f%s", self.progress * 100, "\%"];
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    attributes[NSFontAttributeName] = [UIFont systemFontOfSize:18 * QZProgressViewFontScale];
    attributes[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    [self setCenterProgressText:progressStr withAttributes:attributes];
    
}

@end
