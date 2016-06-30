//
//  POPAnimation.m
//  侧滑返回
//
//  Created by beginner on 16/6/29.
//  Copyright © 2016年 beginner. All rights reserved.
//

#import "POPAnimation.h"

@interface POPAnimation ()

@end



@implementation POPAnimation


// 返回动画执行的时间
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.25;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    
    
    // 动画来自哪个vc
    __block UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    // 转场到哪个vc
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    // 转场动画是两个控制器视图的动画，需要一个containerView作为“舞台”
    UIView *containerView = [transitionContext containerView];
    [containerView insertSubview:toVC.view belowSubview:fromVC.view];
    
    // 获取动画执行时间（实现的协议方法）
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    
    // 执行动画，让fromVC的view移动到屏幕最右侧
    [UIView animateWithDuration:duration animations:^{
        fromVC.view.transform = CGAffineTransformMakeTranslation([UIScreen mainScreen].bounds.size.width, 0);
    } completion:^(BOOL finished) {
        // 当动画执行完时，这个方法必须要调用，否则系统会认为你的其余操作都在动画执行过程中
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
    }];
}
@end
