# MobShareSDK

[![CI Status](http://img.shields.io/travis/shingwasix/MobShareSDK.svg?style=flat)](https://travis-ci.org/shingwasix/MobShareSDK)
[![Version](https://img.shields.io/cocoapods/v/MobShareSDK.svg?style=flat)](http://cocoapods.org/pods/MobShareSDK)
[![License](https://img.shields.io/cocoapods/l/MobShareSDK.svg?style=flat)](http://cocoapods.org/pods/MobShareSDK)
[![Platform](https://img.shields.io/cocoapods/p/MobShareSDK.svg?style=flat)](http://cocoapods.org/pods/MobShareSDK)

ShareSDK for iOS 来自 [mob](http://mob.com)

## 简介
此为非官方整理用于CocoaPods部署的项目，旨在降低开发者集成ShareSDK的成本。项目中Official-Sources下的文件为[mob](http://mob.com) 官网下载的SDK文件，其中，为了通过pod的验证，ShareSDK/UI下的framework目录下补充了缺失的Headers文件夹。

## 版本
2.12.1 [更新时间:2015-10-30]

## 官方更新说明
1. 更新腾讯开放平台SDK到最新，修复在iOS9下QQ空间网页授权可能加载不出授权页面。
2. 删除腾讯开放平台SDK中的info.plist文件，避免在Xcode7下打包时报错。
3. 修复iOS9下系统询问是否打开应用的提醒窗口时没有回调的问题。
4. 修复腾讯微博、Pocket平台分享失败问题。
5. Facebook接口增加设定是否获取token for bussiness字段的接口。

[此版本详细更新说明](http://bbs.mob.com/forum.php?mod=viewthread&tid=18234&page=1&extra=#pid39150)

### 以下用户建议更新：
1. iOS9下QQ空间网页授权失败的用户。
2. 使用Xcode7，因为腾讯SDK打包失败的用户。
3. 需要解决在iOS9下系统询问是否打开应用的提醒窗口时没有回调的用户。
4. 腾讯微博、Pocket分享失败的用户。
5. 需要关闭获取token for bussiness字段的接口的用户。

[iOS9-对ShareSDK的影响（适配iOS-9必读）](http://wiki.mob.com/ios9-%E5%AF%B9sharesdk%E7%9A%84%E5%BD%B1%E5%93%8D%EF%BC%88%E9%80%82%E9%85%8Dios-9%E5%BF%85%E8%AF%BB%EF%BC%89/)

## 兼容平台
iOS 5.1.1 及以上

## 安装

MobShareSDK 可以通过 [CocoaPods](http://cocoapods.org) 进行安装, 只需在 Podfile 中添加以下代码:

```ruby
# 主模块(必须)
pod 'MobShareSDK'

# UI模块(含所有UI样式,可选)
pod 'MobShareSDK/UI'
# iOS竖版默认分享UI(可选)
pod 'MobShareSDK/UI/Flat'
# iPad版默认分享视图(可选)
pod 'MobShareSDK/UI/iPadDefault'
# iPad版简单分享视图(可选)
pod 'MobShareSDK/UI/iPadSimple'
# iPhone版默认分享视图(可选)
pod 'MobShareSDK/UI/iPhoneDefault'
# iPhone版简单分享视图(可选)
pod 'MobShareSDK/UI/iPhoneSimple'
# iPhone版应用推荐视图(可选)
pod 'MobShareSDK/UI/iPhoneAppRecommend'

# 评论和赞模块(可选)
pod 'MobShareSDK/Comment'

# 分享&登录链接模块(含所有平台,可选)
pod 'MobShareSDK/Connection'
# 短信(可选)
pod 'MobShareSDK/Connection/SMS'
# 邮件(可选)
pod 'MobShareSDK/Connection/Mail'
# 拷贝(可选)
pod 'MobShareSDK/Connection/Copy'
# 打印(可选)
pod 'MobShareSDK/Connection/Print'
# 新浪微博(可选)
pod 'MobShareSDK/Connection/SinaWeibo'
# 微信(可选)
pod 'MobShareSDK/Connection/WeChat'
# 腾讯QQ(可选)
pod 'MobShareSDK/Connection/QQ'
# QQ空间(可选)
pod 'MobShareSDK/Connection/QZone'
# 腾讯微博(可选)
pod 'MobShareSDK/Connection/TencentWeibo'
# Google+(可选)
pod 'MobShareSDK/Connection/GooglePlus'
# 人人网(可选)
pod 'MobShareSDK/Connection/RenRen'
# 易信(可选)
pod 'MobShareSDK/Connection/YiXin'
# Pinterest(可选)
pod 'MobShareSDK/Connection/Pinterest'
# Facebook(可选)
pod 'MobShareSDK/Connection/Facebook'
# Dropbox(可选)
pod 'MobShareSDK/Connection/Dropbox'
# DouBan(可选)
pod 'MobShareSDK/Connection/DouBan'
# 印象笔记(可选)
pod 'MobShareSDK/Connection/EverNote'
# Flickr(可选)
pod 'MobShareSDK/Connection/Flickr'
# Instagram(可选)
pod 'MobShareSDK/Connection/Instagram'
# Instapaper(可选)
pod 'MobShareSDK/Connection/Instapaper'
# 开心网(可选)
pod 'MobShareSDK/Connection/KaiXin'
# Twitter(可选)
pod 'MobShareSDK/Connection/Twitter'
# Tumblr(可选)
pod 'MobShareSDK/Connection/Tumblr'
# WhatsApp(可选)
pod 'MobShareSDK/Connection/WhatsApp'
# VKontakte(可选)
pod 'MobShareSDK/Connection/VKontakte'
# KaKaoStory(可选)
pod 'MobShareSDK/Connection/KaKaoStory'
# KaKaoTalk(可选)
pod 'MobShareSDK/Connection/KaKaoTalk'
# Line(可选)
pod 'MobShareSDK/Connection/Line'
# LinkedIn(可选)
pod 'MobShareSDK/Connection/LinkedIn'
# Pocket(可选)
pod 'MobShareSDK/Connection/Pocket'
# 明道(可选)
pod 'MobShareSDK/Connection/MingDao'
# 有道云笔记(可选)
pod 'MobShareSDK/Connection/YouDaoNote'
# 支付宝(可选)
pod 'MobShareSDK/Connection/AliPaySocial'
```
安装`MobShareSDK/UI`模块可使用所有UI界面，安装`MobShareSDK/Connection`模块可使用所有分享平台。但鉴于安装所有分享平台模块会使得应用变得非常庞大，所以不推荐大家使用这种方式安装。开发者可根据自己的需求安装引入指定的分享模块，这样可使应用体积保持小巧。

例：应用需要包含新浪微博分享和微信分享，并且需要使用简单分享视图，则只需要添加如下代码于 Podfile 中进行安装即可。

```ruby
pod 'MobShareSDK'
pod 'MobShareSDK/UI/iPadSimple'
pod 'MobShareSDK/UI/iPhoneSimple'
pod 'MobShareSDK/Connection/SinaWeibo'
pod 'MobShareSDK/Connection/WeChat'
```

## 官方下载
http://mob.com/#/downloadDetail/ShareSDK/ios

## 官方开发文档
http://wiki.mob.com/%E5%BF%AB%E9%80%9F%E9%9B%86%E6%88%90%E6%8C%87%E5%8D%97/

## License

Copyright © 2012-2015 mob.
