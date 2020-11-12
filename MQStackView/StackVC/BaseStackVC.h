//
//  BaseStackVC.h
//  MQStackView
//
//  Created by ma qi on 2020/11/12.
//

#import <UIKit/UIKit.h>

#define BaseTag 1000

NS_ASSUME_NONNULL_BEGIN

@interface BaseStackVC : UIViewController {
    UIButton *lastBtn;
}

@property (nonatomic, strong) UIStackView *stackView;
@property (nonatomic, strong) UIView *oneView;
@property (nonatomic, strong) UIView *twoView;
@property (nonatomic, strong) UIView *threeView;
@property (nonatomic, strong) UIView *fourView;


@property (nonatomic, strong) NSArray *propertyArr;

- (void)createButtons;
- (void)changeAxis:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
