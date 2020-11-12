//
//  StackAxisVC.m
//  MQStackView
//
//  Created by ma qi on 2020/11/12.
//

#import "StackAxisVC.h"

@interface StackAxisVC ()


@end

@implementation StackAxisVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.stackView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(HEIGHT_TOP + 50);
        make.left.equalTo(20);
        make.right.equalTo(-20);
        make.height.equalTo(300);
    }];
    [self.oneView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(50);
        make.height.equalTo(100);
    }];
    [self.twoView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(80);
        make.height.equalTo(150);
    }];
    [self.threeView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(30);
        make.height.equalTo(70);
    }];
    
    self.propertyArr = @[@"Horizontal", @"Vertical"];
    [self createButtons];
}

- (void)changeAxis:(UIButton *)sender {
    NSInteger index = sender.tag - BaseTag;
    self.stackView.axis = (UILayoutConstraintAxis)index;
    if (lastBtn) {
        lastBtn.backgroundColor = UIColor.clearColor;
    }
    sender.backgroundColor = UIColor.cyanColor;
    lastBtn = sender;
}


@end
