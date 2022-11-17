//
//  AppDelegate.m
//  Frame
//
//  Created by 冯汉栩 on 2021/2/7.
//

#import "AppDelegate.h"
#import "ViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];    
//    FHXTabBarController *tabBarVC = [[FHXTabBarController alloc]init];
//    [tabBarVC setUpOneChildViewController:[[ViewController alloc] init] image:@"slider_normal" selectedImage:@"slider_normal" title:@"1"];
//    [tabBarVC setUpOneChildViewController:[[AViewController alloc] init] image:@"slider_normal" selectedImage:@"slider_normal" title:@"1"];
    self.window.rootViewController = [[FHXNavigationController alloc] initWithRootViewController:[ViewController new]];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application{
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = [NSString new];
}

- (void)applicationDidEnterBackground:(UIApplication *)application{
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = [NSString new];
}

- (void)applicationWillTerminate:(UIApplication *)application{
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = [NSString new];
}

#pragma mark - UISceneSession lifecycle

//
//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
//}
//
//
//- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
//    // Called when the user discards a scene session.
//    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//}


@end
