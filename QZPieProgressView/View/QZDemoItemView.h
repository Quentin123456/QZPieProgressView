//
//  QZDemoItemView.h
//  QZPieProgressView
//
//  Created by 臧乾坤 on 2018/1/11.
//  Copyright © 2018年 QuentinZang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QZBaseProgressView.h"

@interface QZDemoItemView : UIView

@property (assign, nonatomic) Class progressViewClass;

@property (strong, nonatomic) QZBaseProgressView *progressView;

+ (id)demoItemViewWithClass:(Class)class;

@end
