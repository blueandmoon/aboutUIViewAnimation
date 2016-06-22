//
//  CustomView.m
//  aboutUIViewAnimation
//
//  Created by 李根 on 16/6/22.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addAnimationBlock];
        
    }
    return self;
}

- (void)addAnimationBlock {
    self.block = ^() {
        //  打印动画块的位置
        NSLog(@"动画执行之前的位置: %@", NSStringFromCGPoint(self.center));
        
        //  首尾式动画
        [UIView beginAnimations:nil context:nil];
        //  执行动画
        //  设置动画执行时间
        [UIView setAnimationDuration:2.0];
        //  设置代理
        [UIView setAnimationDelegate:self];
        //  设置动画执行完毕调用事件
        [UIView setAnimationDidStopSelector:@selector(didStopAnimation)];
        self.center = CGPointMake(200, 300);
        [UIView commitAnimations];
    };
}

- (void)addAnimation {
//    __weak CustomView *blockSelf = self;
    //  打印动画块的位置
    NSLog(@"动画执行之前的位置: %@", NSStringFromCGPoint(self.center));
    
    //  首尾式动画
    [UIView beginAnimations:nil context:nil];
    //  执行动画
    //  设置动画执行时间
    [UIView setAnimationDuration:2.0];
    //  设置代理
    [UIView setAnimationDelegate:self];
    //  设置动画执行完毕调用事件
    [UIView setAnimationDidStopSelector:@selector(didStopAnimation)];
    self.center = CGPointMake(200, 300);
    [UIView commitAnimations];
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    
//    //  打印动画块的位置
//    NSLog(@"动画执行之前的位置: %@", NSStringFromCGPoint(self.center));
//    
//    //  首尾式动画
//    [UIView beginAnimations:nil context:nil];
//    //  执行动画
//    //  设置动画执行时间
//    [UIView setAnimationDuration:2.0];
//    //  设置代理
//    [UIView setAnimationDelegate:self];
//    //  设置动画执行完毕调用事件
//    [UIView setAnimationDidStopSelector:@selector(didStopAnimation)];
//    self.center = CGPointMake(200, 300);
//    [UIView commitAnimations];
//    
//}

- (void)didStopAnimation {
    NSLog(@"动画执行完毕");
    //  打印动画块的位置
    NSLog(@"动画执行之后的位置: %@", NSStringFromCGPoint(self.center));
}

- (void)addTransitionAnimation {
    
    //  block代码块动画
    [UIView transitionWithView:self duration:3.0 options:(UIViewAnimationOptionLayoutSubviews) animations:^{
        NSLog(@"动画开始执行前的位置: %@", NSStringFromCGPoint(self.center));
        self.center = CGPointMake(200, 300);
    } completion:^(BOOL finished) {
        //  动画执行完毕后的首位操作
        NSLog(@"动画执行完毕");
        NSLog(@"动画执行完毕后的位置%@", NSStringFromCGPoint(self.center));
    }];
    
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
