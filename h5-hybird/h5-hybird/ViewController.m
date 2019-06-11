//
//  ViewController.m
//  h5-hybird
//
//  Created by Yakun Hu on 2019/6/11.
//  Copyright © 2019 huyakun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 屏幕宽高
    CGFloat viewWidth = self.view.frame.size.width;
    CGFloat viewHeight = self.view.frame.size.height;
    // 创建web view视图
    UIWebView *webView = [[UIWebView alloc] initWithFrame: CGRectMake(0, 35, viewWidth, viewHeight-35)];
    
    // 关闭web view 滚动
    webView.scrollView.bounces = NO;
    // 添加web view
    [self.view addSubview: webView];
    
    // 使用服务器中的页面部署至web view中
    //    NSString *path = @"http://www.baidu.com";
    //    NSURL *url = [NSURL URLWithString: path];
    //    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //    [webView loadRequest:request];
    
    
    // 本地页面加载至web view
    // 1. 获取本地网页路径
    NSString *path = [[NSBundle mainBundle] pathForResource:@"web-app/index.html" ofType:nil];
    // 2. 创建网页加载请求
    NSURL *url = [NSURL URLWithString:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    // web view 加载请求
    [webView loadRequest:request];
    
}


@end
