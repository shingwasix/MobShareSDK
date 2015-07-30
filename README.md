# MobShareSDK

[![CI Status](http://img.shields.io/travis/shingwasix/MobShareSDK.svg?style=flat)](https://travis-ci.org/shingwasix/MobShareSDK)
[![Version](https://img.shields.io/cocoapods/v/MobShareSDK.svg?style=flat)](http://cocoapods.org/pods/MobShareSDK)
[![License](https://img.shields.io/cocoapods/l/MobShareSDK.svg?style=flat)](http://cocoapods.org/pods/MobShareSDK)
[![Platform](https://img.shields.io/cocoapods/p/MobShareSDK.svg?style=flat)](http://cocoapods.org/pods/MobShareSDK)

ShareSDK for iOS 来自 [mob](http://mob.com)

## 简介
此项目为非官方整理，旨在降低开发者集成ShareSDK的成本。项目中所包含的ShareSDK类库均从 [mob](http://mob.com) 官网下载，本人未对其进行过任何修改。

## 版本
2.11.1 [更新时间:2015-07-29]

## 更新说明
1. 新浪微博客户端授权支持添加scopes权限
2. 分享菜单栏自动隐藏没有安装客户端又需要客户端才能分享的平台
3. iPad下新浪微博的网页授权页面置于屏幕中间
4. LinkedIn获取用户信息时新增获取邮箱地址数据
5. 修复第三方SDK的JSONKit可能导致的冲突
6. 修复打印平台可能打出空白纸
7. 修复GooglePlus授权分享回调错误
8. 移除腾讯微博SDK（腾讯微博SDK目前无法正常使用）

## 兼容平台
iOS 5.1.1 及以上

## 安装

MobShareSDK 可以通过 [CocoaPods](http://cocoapods.org). 进行安装, 只需在 Podfile 中添加以下代码:

```ruby
pod "MobShareSDK"
```

## 官方下载
http://mob.com/Download/detail?type=1&plat=2

## 官方开发文档
http://wiki.mob.com/%E5%BF%AB%E9%80%9F%E9%9B%86%E6%88%90%E6%8C%87%E5%8D%97/

## License

Copyright © 2012-2015 mob.