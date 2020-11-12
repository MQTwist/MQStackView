//
//  StackAlignmentVC.m
//  MQStackView
//
//  Created by ma qi on 2020/11/12.
//

#import "StackAlignmentVC.h"

@interface StackAlignmentVC ()

@end

@implementation StackAlignmentVC

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.stackView.axis = UILayoutConstraintAxisVertical;
//    self.stackView.baselineRelativeArrangement = YES;
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
    
    self.propertyArr = @[@"Fill", @"Leading", @"Top", @"FirstBaseline", @"Center", @"Trailing", @"Bottom", @"LastBaseline"];
    [self createButtons];
}

- (void)changeAxis:(UIButton *)sender {
    NSInteger index = sender.tag - BaseTag;
    switch (index) {
        case 6: {//强转我这报错
            self.stackView.alignment = (UIStackViewAlignmentBottom);
            break;
        }
        case 7: {//强转我这报错
            self.stackView.alignment = (UIStackViewAlignmentLastBaseline);
            break;
        }
        default:
            self.stackView.alignment = (UIStackViewAlignment)index;
            break;
    }
    if (lastBtn) {
        lastBtn.backgroundColor = UIColor.clearColor;
    }
    sender.backgroundColor = UIColor.cyanColor;
    lastBtn = sender;
}

@end
