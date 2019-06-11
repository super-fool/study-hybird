#  OC Review

## core function

NS函数归属于Cocoa Foundation框架；`其"NS”的由来据说是这样的：乔布斯被苹果开除后，创立了NeSt公司，而cocoa Fundation基础类库就是出自于NeST公司，NeST中的"NS"被作为Fundation中所有成员的前缀`.
该框架包含了：NS包含了很多**面向数据的简单类和数据类型**，e.g. NSString，NSArray，NSNumber etc.
```oc
NSString *str1 = @"hello oc";
NSString *str2 = [NSString stringWithFormat: @"hello %s", "oc"];

if([str1 isEqualToString: str2]){
    NSLog(@"They are the same!");
}


// 只能存储oc对象，最后画nil表示结束的标记符号，nil在C语言中表示对象的null值。
NSArray *arr = [NSArray arrayWithObjects: @"hello", @"oc", nil];
for(NSInteger i = 0; i < [arr count]; i++) {
    NSLog(@"arr %d is %@", i, [arr objectAtIndex: i]);
}
```

CF函数归属于Core Foundation框架；
CG函数归属于CoreGraphics.frameworks框架；
CA函数归属于CoreAnimation.frameworks框架；
UI函数归属于UIKit框架。



