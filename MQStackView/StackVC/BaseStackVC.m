//
//  BaseStackVC.m
//  MQStackView
//
//  Created by ma qi on 2020/11/12.
//

#import "BaseStackVC.h"

@interface BaseStackVC ()

@end

@implementation BaseStackVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.stackView];
    [self.stackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(HEIGHT_TOP + 100);
        make.left.equalTo(20);
        make.height.equalTo(50);
    }];
    [self.oneView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(50);
    }];
    [self.twoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(50);
    }];
    [self.threeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(50);
    }];
    [self.fourView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(50);
    }];
}

- (void)createButtons {
    CGFloat height = 40, width = 140;
    CGFloat padding = 20;
    CGFloat margin = (WIDTH_SCREEN - width * 2 - padding * 2);
    for (NSInteger i = 0; i < self.propertyArr.count; i++) {
        UIButton *btn = [UIButton new];
        btn.tag = BaseTag + i;
        NSString *str = self.propertyArr[i];
        [btn setTitle:str forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:15];
        [btn setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(changeAxis:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.stackView.mas_bottom).offset(50 + (height + 20) * (i / 2));
            make.width.equalTo(width);
            make.height.equalTo(height);
            make.left.equalTo(padding + (width + margin) * (i % 2));
        }];
    }
}

#pragma mark -
#pragma mark - action ---> button

- (void)changeAxis:(UIButton *)sender {
    
}

#pragma mark -
#pragma mark - getter ---> view

- (UIStackView *)stackView {
    if (!_stackView) {
        _stackView = [[UIStackView alloc] initWithArrangedSubviews:@[self.oneView, self.twoView, self.threeView, self.fourView]];
        _stackView.backgroundColor = UIColor.cyanColor;
        _stackView.spacing = 20;
    }
    return _stackView;
}

- (UIView *)oneView {
    if (!_oneView) {
        _oneView = [UIView new];
        _oneView.backgroundColor = UIColor.redColor;
    }
    return _oneView;
}

- (UIView *)twoView {
    if (!_twoView) {
        _twoView = [UIView new];
        _twoView.backgroundColor = UIColor.blackColor;
    }
    return _twoView;
}

- (UIView *)threeView {
    if (!_threeView) {
        _threeView = [UIView new];
        _threeView.backgroundColor = UIColor.yellowColor;
    }
    return _threeView;
}

- (UIView *)fourView {
    if (!_fourView) {
        _fourView = [UIView new];
        _fourView.backgroundColor = UIColor.darkGrayColor;
    }
    return _fourView;
}

@end
