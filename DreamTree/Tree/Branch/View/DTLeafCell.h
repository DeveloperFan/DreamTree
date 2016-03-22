//
//  DTLeafCell.h
//  DreamTree
//
//  Created by 彦明 on 16/3/21.
//  Copyright © 2016年 YanmingFan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DTLeafItem;
@interface DTLeafCell : UICollectionViewCell
/** 模型数据 */
@property (nonatomic , strong) DTLeafItem *leafItem;

@end
