//
//  DTLeavesViewController.m
//  DreamTree
//
//  Created by 彦明 on 16/3/21.
//  Copyright © 2016年 YanmingFan. All rights reserved.
//

#import "DTLeavesViewController.h"
#import "DTLeafCell.h"
#import "DTLeafItem.h"

@interface DTLeavesViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation DTLeavesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViews];
}
static NSString *ID_LeafCell = @"LeafCell";
- (void)setupViews {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 添加collectionView
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    // 尺寸
    flowLayout.itemSize = CGSizeMake(150, 118);
    // 滚动方向
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    // 设置边距
    flowLayout.minimumLineSpacing = 15;
    flowLayout.minimumInteritemSpacing = 15;
    flowLayout.sectionInset = UIEdgeInsetsMake(15, 15, 15, 15);
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:flowLayout];
    collectionView.backgroundColor = [UIColor  clearColor];
    
    [self.view addSubview:collectionView];
    [collectionView registerClass:[DTLeafCell class] forCellWithReuseIdentifier:ID_LeafCell];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
}

#pragma mark - delegate
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    DTLeafItem *item = [[DTLeafItem alloc] init];
    item.index = indexPath.item;
    
    DTLeafCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID_LeafCell forIndexPath:indexPath];
    cell.leafItem = item;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
