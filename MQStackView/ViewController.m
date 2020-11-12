//
//  ViewController.m
//  MQStackView
//
//  Created by ma qi on 2020/11/12.
//

#import "ViewController.h"
#import "AutoLayoutStackVC.h"
#import "StackAxisVC.h"
#import "StackDistributionVC.h"
#import "StackAlignmentVC.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArr;

@end

static NSString *const cellId = @"cellId";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"ROOT";
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(HEIGHT_TOP);
        make.left.right.bottom.equalTo(0);
    }];
}

#pragma mark -
#pragma mark - delegate ---> tableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.textLabel.text = self.dataArr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSString *str = self.dataArr[indexPath.row];
    if ([str isEqualToString:@"AutoLayout"]) {
        AutoLayoutStackVC *vc = [AutoLayoutStackVC new];
        vc.navigationItem.title = str;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([str isEqualToString:@"Axis"]) {
        StackAxisVC *vc = [StackAxisVC new];
        vc.navigationItem.title = str;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([str isEqualToString:@"Distribution"]) {
        StackDistributionVC *vc = [StackDistributionVC new];
        vc.navigationItem.title = str;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([str isEqualToString:@"Alignment"]) {
        StackAlignmentVC *vc = [StackAlignmentVC new];
        vc.navigationItem.title = str;
        [self.navigationController pushViewController:vc animated:YES];
    }
}

#pragma mark -
#pragma mark - getter ---> data

- (NSArray *)dataArr {
    if (!_dataArr) {
        _dataArr = @[@"AutoLayout", @"Axis", @"Distribution", @"Alignment"];
    }
    return _dataArr;
}

#pragma mark -
#pragma mark - getter ---> view

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [UITableView new];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    }
    return _tableView;
}

@end
