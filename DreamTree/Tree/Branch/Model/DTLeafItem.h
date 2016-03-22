//
//  DTLeafItem.h
//  DreamTree
//
//  Created by 彦明 on 16/3/22.
//  Copyright © 2016年 YanmingFan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DTLeafItem : NSObject
/** bg */
@property (nonatomic , copy) NSString *cellBackground;


/** 
 辅助属性
 */

/** 索引 */
@property (nonatomic, assign) NSInteger index;

@end
