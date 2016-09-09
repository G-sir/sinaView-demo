//
//  ViewController.m
//  新浪微博
//
//  Created by GQ on 16/7/18.
//  Copyright © 2016年 GQ. All rights reserved.
//

#import "ViewController.h"

#import "GQWeiBo.h"

#import "GQCell.h"

@interface ViewController ()

@property(nonatomic,strong) NSArray *weiBoArray;


@end

@implementation ViewController



/**
 *  懒加载
 */
- (NSArray *)weiBoArray{
    
    //1.判断对象是否为Nil
    if (_weiBoArray == nil) {
        
        //2. 加载数据
        _weiBoArray = [GQWeiBo weiBoWithPlistFileName:@"weibos"];
        
    }
    //3.返回数据
    return _weiBoArray;
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.weiBoArray.count;
}



- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    static NSString *reuseId = @"weibo";
    
    GQCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId forIndexPath:indexPath];
    GQWeiBo *weibo = self.weiBoArray[indexPath.row];
    
    cell.weibo = weibo;
    
    
    return cell;
}






- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    self.tableView.estimatedRowHeight = 2;
  
}





@end
