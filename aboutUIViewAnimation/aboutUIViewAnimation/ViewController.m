//
//  ViewController.m
//  aboutUIViewAnimation
//
//  Created by 李根 on 16/6/22.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()
@property(nonatomic, strong)CustomView *customView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    //  执行动画所需要的工作有UIView类自动完成, 但仍要在希望执行动画时通知视图, 为此要将改变属性的代码放在[UIView beginAnimations:nil context:nil] 和 [UIView commitAnimations]之间
    /**
     *
     *
     *  + (void)setAnimationDelegate:(id)delegate     设置动画代理对象，当动画开始或者结束时会发消息给代理对象
     
     + (void)setAnimationWillStartSelector:(SEL)selector   当动画即将开始时，执行delegate对象的selector，并且把beginAnimations:context:中传入的参数传进selector
     
     + (void)setAnimationDidStopSelector:(SEL)selector  当动画结束时，执行delegate对象的selector，并且把beginAnimations:context:中传入的参数传进selector
     
     + (void)setAnimationDuration:(NSTimeInterval)duration   动画的持续时间，秒为单位
     
     + (void)setAnimationDelay:(NSTimeInterval)delay  动画延迟delay秒后再开始
     
     + (void)setAnimationStartDate:(NSDate *)startDate   动画的开始时间，默认为now
     
     + (void)setAnimationCurve:(UIViewAnimationCurve)curve  动画的节奏控制
     
     + (void)setAnimationRepeatCount:(float)repeatCount  动画的重复次数
     
     + (void)setAnimationRepeatAutoreverses:(BOOL)repeatAutoreverses  如果设置为YES,代表动画每次重复执行的效果会跟上一次相反
     
     + (void)setAnimationTransition:(UIViewAnimationTransition)transition forView:(UIView *)view cache:(BOOL)cache  设置视图view的过渡效果, transition指定过渡类型, cache设置YES代表使用视图缓存，性能较好
     */
    
    _customView = [[CustomView alloc] initWithFrame:CGRectMake(0, 0, 50, 100)];
    [self.view addSubview:_customView];
    _customView.backgroundColor = [UIColor purpleColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 10, 60, 30);
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor orangeColor];
    /**
     *  UIView和CALayer都能实现动画效果, 但在实际开发中, 一般主要使用UIView封装的动画
     *
     *  UIView动画和CALayer动画的区别
     *      UIView封装的动画执行完毕之后不会反弹, 即如果是通过CALayer核心动画改变layer的位置状态, 表面上看虽然已经改变了, 但是实际上它的位置是没有改变的
     *
     */
    
    
    
    
    
}

- (void)click:(id)sender {
//    _customView.block();
//    [_customView addAnimation];
    
    [_customView addTransitionAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




























@end
