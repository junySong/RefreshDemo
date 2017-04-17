//
//  TestViewController.m
//  RefreshDemo
//
//  Created by 宋俊红 on 17/3/29.
//  Copyright © 2017年 Juny_song. All rights reserved.
//

/**
 想测试下

 @param void <#void description#>
 @return <#return value description#>
 */
#import "TestViewController.h"

@interface TestViewController ()<UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;//

@property (nonatomic, assign) BOOL isRefreshing;// 是否正在刷新


@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _isRefreshing = NO;
    _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(80, 60, 100, 300)];
    _scrollView.contentSize = CGSizeMake(100, 300);
    _scrollView.delegate = self;
    [self.view addSubview:_scrollView];
    _scrollView.scrollEnabled = YES;
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 300)];
    imageView.image = [UIImage imageNamed:@"zhengti-bg"];
    [_scrollView addSubview:imageView];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, -20, 100, 20)];
    label.text = @"下拉刷新";
    [_scrollView insertSubview:label atIndex:0];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadNewData{
    [self performSelector:@selector(endHeaderRefresh) withObject:nil afterDelay:3];
}

- (void)endHeaderRefresh{
    _scrollView.contentOffset = CGPointMake(0, 0);
}
- (void)loadMoreData{
    [self performSelector:@selector(endFooterRefresh) withObject:nil afterDelay:3];
}
- (void)endFooterRefresh{
    CGSize size = _scrollView.contentSize;
    _scrollView.contentOffset = CGPointMake(0, 0);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark------------------scrollViewDelegate----------------------
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    
}

@end
