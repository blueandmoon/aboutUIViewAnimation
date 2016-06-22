//
//  CustomView.h
//  aboutUIViewAnimation
//
//  Created by 李根 on 16/6/22.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^BLOCK)();
@interface CustomView : UIView
//  移动动画
@property(nonatomic, strong)BLOCK block;    //  在外界调用这个block就可以实现动画了
//  移动动画
- (void)addAnimation;

- (void)addTransitionAnimation;

@end
