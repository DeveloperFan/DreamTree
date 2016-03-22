//
//  DTMainViewController.m
//  DreamTree
//
//  Created by 彦明 on 16/3/21.
//  Copyright © 2016年 YanmingFan. All rights reserved.
//

#import "DTMainViewController.h"
#import "DTMainNavigationViewController.h"
#import "DTLeavesViewController.h"
#import "DTPassengersViewController.h"
#import "DTGodViewController.h"

@interface DTMainViewController ()

@end

@implementation DTMainViewController

+ (void)initialize{
    UITabBar *tabBar = [UITabBar appearance];
    [tabBar setTintColor:[UIColor colorWithRed:31/255.0 green:21/255.0 blue:211/255.0 alpha:1.0]];
    [tabBar setBackgroundColor:[UIColor whiteColor]];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self addChildViewControllers];

}

// 添加所有子控制器
- (void)addChildViewControllers
{
    // leaves
    DTLeavesViewController *leavesVC = [[DTLeavesViewController alloc] init];
    [self setUpChildViewController:leavesVC andTitle:@"Leaves" andImageName:@"leaf_normal" andSelectedImageName:@"leaf_selected"];
    
    
    // passenger单
    
    DTPassengersViewController *passengersVC = [[DTPassengersViewController alloc] init];
    [self setUpChildViewController:passengersVC andTitle:@"Passengers" andImageName:@"bird_normal" andSelectedImageName:@"bird_selected"];
    
    // god
    
    DTGodViewController *godVC = [[DTGodViewController alloc] init];
    [self setUpChildViewController:godVC andTitle:@"GodLike" andImageName:@"godHat_normal" andSelectedImageName:@"godHat_selected"];
    
}

// 设置每个子控制器
- (void)setUpChildViewController:(UIViewController *)VC andTitle:(NSString *)title andImageName:(NSString *)imageName andSelectedImageName:(NSString *)selectedImageName
{
    // 用导航控制器包装控制器
    DTMainNavigationViewController *nav = [[DTMainNavigationViewController alloc] initWithRootViewController:VC];
    [self addChildViewController:nav];
    
    // 设置导航条内容
    VC.tabBarItem.title = title;
    VC.tabBarItem.image = [UIImage imageNamed:imageName];
    VC.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
