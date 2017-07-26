//
//  ViewController.m
//  test
//
//  Created by asd on 2017/7/11.
//  Copyright © 2017年 asd. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>

typedef void (^SayHello)();

typedef int(^MyBlock)(int,int);



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self test];
}


- (void)test{
    
    
//    void (^aBlock)(NSString *, NSString *);
//    aBlock = ^(NSString *x, NSString *y){
//        
//        NSLog(@"%@ love %@",x,y);
//        
//    };
//    
//    int(^myBlock)(int) = ^(int num){
//      
//        return num *7;
//    };
//    
////    aBlock (@"LI lei",@"Han Meimei");
//    
//    SayHello hello = ^(){
//        NSLog(@"hello");
//    };
//    hello();
    
//    void useBlockForC(int(^aBlock)(int, int))
//    {
//        NSLog(@"result = %d", aBlock(300,200));
//    }
////
//    int(^addBlock)(int,int) = ^(int x,int y){
//        return x+y;
//    };
    
//    int (^addBlock)(int,int) = ^(int x,int y){
//        return  x + y;
//    };
//    
    

    MyBlock addBlock = ^(int x,int y){
        return x + y;
    };
    
        [self userBlockForOC:addBlock];
    
    [self userBlockForOC:^(int x, int y){
        return x+y;
    }];
    
}


- (void)userBlockForOC:(int (^)(int,int))aBlock{
    
     NSLog(@"result = %d", aBlock(300,200));
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
