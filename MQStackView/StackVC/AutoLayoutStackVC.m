//
//  AutoLayoutStackVC.m
//  MQStackView
//
//  Created by ma qi on 2020/11/12.
//

#import "AutoLayoutStackVC.h"

@interface AutoLayoutStackVC ()

@property (nonatomic, assign) NSInteger count;

@end

@implementation AutoLayoutStackVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self MQ_AddBtn];
}

- (void)MQ_AddBtn {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.center = self.view.center;
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnClick:(UIButton *)sender {
    for (UIView *view in self.stackView.arrangedSubviews) {
        view.hidden = NO;
    }
    self.count += 1;
    switch (self.count % 4) {
        case 0: {
            
            break;
        }
        case 1: {
            self.oneView.hidden = YES;
            break;
        }
        case 2: {
            self.oneView.hidden = YES;
            self.twoView.hidden = YES;
            break;
        }
        case 3: {
            self.oneView.hidden = YES;
            self.twoView.hidden = YES;
            self.threeView.hidden = YES;
            break;
        }
        default:
            break;
    }
}

@end
