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
    
    NSMutableString *mutableStr = [NSMutableString stringWithCapacity: 50];
    [mutableStr appendString: @"hello"];
    [mutableStr appendFormat: @"%s", "oc"];
    
    // 只能存储oc对象，最后画nil表示结束的标记符号，nil在C语言中表示对象的null值。
    NSArray *arr = [NSArray arrayWithObjects: @"hello", @"oc", nil];
    
    for(NSInteger i = 0; i < [arr count]; i++) {
        NSLog(@"arr %d is %@", i, [arr objectAtIndex: i]);
    }
    
    
}


@end
