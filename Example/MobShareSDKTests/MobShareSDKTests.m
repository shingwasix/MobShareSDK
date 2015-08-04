//
//  MobShareSDKTests.m
//  MobShareSDKTests
//
//  Created by SixChashao on 15/8/4.
//  Copyright (c) 2015年 ShingwaSix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <MobShareSDK/ShareSDK/ShareSDK.h>

@interface MobShareSDKTests : XCTestCase

@end

@implementation MobShareSDKTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRegister
{
    [ShareSDK registerApp:@"1234567890abcdefghijk" useAppTrusteeship:YES];
}

- (void)testSimpleShareView
{
    id<ISSContent> publishContent = [ShareSDK content:@"MobShareSDK"
                                       defaultContent:@"MobShareSDK"
                                                image:nil
                                                title:@"MobShareSDK"
                                                  url:@"https://github.com/shingwasix/MobShareSDK"
                                          description:@"MobShareSDK"
                                            mediaType:SSPublishContentMediaTypeText];
    
    [ShareSDK showShareViewWithType:ShareTypeSinaWeibo
                          container:nil
                            content:publishContent
                      statusBarTips:YES
                        authOptions:nil
                       shareOptions:[ShareSDK simpleShareOptionsWithTitle:@"分享" shareViewDelegate:nil]
                             result:^(ShareType type, SSResponseState state, id<ISSPlatformShareInfo> statusInfo, id<ICMErrorInfo> error, BOOL end) {
                                 if (state == SSPublishContentStateSuccess)
                                 {
                                     NSLog(NSLocalizedString(@"TEXT_SHARE_SUC", @"发表成功"));
                                 }
                                 else if (state == SSPublishContentStateFail)
                                 {
                                     NSLog(NSLocalizedString(@"TEXT_SHARE_FAI", @"发布失败!error code == %d, error code == %@"), [error errorCode], [error errorDescription]);
                                 }
                             }];
}

@end
