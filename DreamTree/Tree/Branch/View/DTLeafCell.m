//
//  DTLeafCell.m
//  DreamTree
//
//  Created by 彦明 on 16/3/21.
//  Copyright © 2016年 YanmingFan. All rights reserved.
//

#import "DTLeafCell.h"
#import "DTLeafItem.h"
@interface DTLeafCell()
/** bg */
@property (nonatomic, weak) UIImageView *cellBackgroundImageView;
@end
@implementation DTLeafCell
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupViews];
    }
    return self;
}

#pragma mark - 初始化cell
- (void)setupViews {
    
    UIImageView *cellBackgroundImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:cellBackgroundImageView];
    self.cellBackgroundImageView = cellBackgroundImageView;
    
    
    
    [cellBackgroundImageView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView);
    }];
    
}

#pragma mark - 设置数据
- (void)setLeafItem:(DTLeafItem *)leafItem
{
    _leafItem = leafItem;
    _cellBackgroundImageView.image = leafItem.index%2 == 0 ? [UIImage imageNamed:@"leaf_left"] : [UIImage imageNamed:@"leaf_right"];
    
}
@end
