//
//  GQCell.m
//  新浪微博
//
//  Created by GQ on 16/7/18.
//  Copyright © 2016年 GQ. All rights reserved.
//

#import "GQCell.h"
#import "GQWeiBo.h"

@interface GQCell ()


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *pictureH;


@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLable;
@property (weak, nonatomic) IBOutlet UIImageView *vipImageView;
@property (weak, nonatomic) IBOutlet UILabel *textLable;
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;


@end


@implementation GQCell


- (void)setWeibo:(GQWeiBo *)weibo{
    
    _weibo = weibo;
    
    self.userImageView.image = [UIImage imageNamed:weibo.icon];
    
    self.nameLable.text = weibo.name;
    
    self.textLable.text = weibo.text;
    
    if (weibo.vip == IsVip_YES) {
        
        self.vipImageView.hidden = NO;
        self.vipImageView.image = [UIImage imageNamed:@"vip"];
    }else{
        self.vipImageView.hidden = YES;
    }
    
    if (weibo.picture.length > 0 ) {
        self.pictureImageView.hidden = NO;
        self.pictureImageView.image = [UIImage imageNamed:weibo.picture];
        self.pictureH.constant = 70;
    }else{
    
        self.pictureImageView.hidden = YES;
        self.pictureH.constant = 0;
    
    }
    
    
}



@end
