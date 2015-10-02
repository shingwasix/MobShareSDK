Pod::Spec.new do |s|
    s.name                = "MobShareSDK"
    s.version             = "2.12.0"
    s.summary             = 'ShareSDK of mob for iOS.'
    s.license             = 'Copyright © 2012-2015 mob'
    s.author              = { "shingwasix" => "https://github.com/shingwasix" }
    s.homepage            = 'http://mob.com'
    s.source              = { :git => "https://github.com/shingwasix/MobShareSDK.git", :tag => s.version.to_s }
    s.platform            = :ios, '5.1.1'
    s.frameworks          = 'SystemConfiguration', 'QuartzCore', 'CoreTelephony', 'Security', 'JavaScriptCore', 'CoreText'
    s.libraries           = 'icucore', 'z.1.2.5', 'stdc++'
    s.default_subspecs    = 'Core'
    s.vendored_frameworks = 'Official-Sources/ShareSDK/ShareSDK.framework'

    # 核心模块
    s.subspec 'Core' do |sp|
        sp.vendored_frameworks = 'Official-Sources/ShareSDK/Core/AGCommon.framework', 'Official-Sources/ShareSDK/Core/MOBFoundation.framework', 'Official-Sources/ShareSDK/Core/ShareSDKCoreService.framework'
        sp.libraries = 'z', 'icucore'
        sp.resources = ['Official-Sources/ShareSDK/Core/Resource.bundle', 'Official-Sources/ShareSDK/Core/zh-Hans.lproj/ShareSDKLocalizable.strings']
    end

    s.subspec 'UI' do |sp|
        sp.default_subspecs = 'Flat', 'iPadDefault', 'iPadSimple', 'iPhoneDefault', 'iPhoneSimple', 'iPhoneAppRecommend'

        # iOS竖版默认分享UI
        sp.subspec 'Flat' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/UI/ShareSDKFlatShareViewUI.framework', 'Official-Sources/ShareSDK/UI/ShareSDKShareActionSheet.framework'
            ssp.resource = 'Official-Sources/ShareSDK/UI/ShareSDKFlatShareViewUI.bundle'
        end

        # iPad版默认分享视图
        sp.subspec 'iPadDefault' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/UI/ShareSDKiPadDefaultShareViewUI.framework'
            ssp.resource = 'Official-Sources/ShareSDK/UI/ShareSDKiPadDefaultShareViewUI.bundle'
        end

        # iPad版简单分享视图
        sp.subspec 'iPadSimple' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/UI/ShareSDKiPadSimpleShareViewUI.framework'
            ssp.resource = 'Official-Sources/ShareSDK/UI/ShareSDKiPadSimpleShareViewUI.bundle'
        end

        # iPhone版默认分享视图
        sp.subspec 'iPhoneDefault' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/UI/ShareSDKiPhoneDefaultShareViewUI.framework'
            ssp.resource = 'Official-Sources/ShareSDK/UI/ShareSDKiPhoneDefaultShareViewUI.bundle'
        end

        # iPhone版简单分享视图
        sp.subspec 'iPhoneSimple' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/UI/ShareSDKiPhoneSimpleShareViewUI.framework'
            ssp.resource = 'Official-Sources/ShareSDK/UI/ShareSDKiPhoneSimpleShareViewUI.bundle'
        end

        # iPhone版应用推荐视图
        sp.subspec 'iPhoneAppRecommend' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/UI/ShareSDKiPhoneAppRecommendShareViewUI.framework'
        end
    end

    # 评论和赞
    s.subspec 'Comment' do |sp|
        sp.vendored_frameworks = 'Official-Sources/Comment/Comment.framework'
        sp.resource = 'Official-Sources/Comment/Comment.bundle'
    end

    # 拓展（仅内部引用）
    s.subspec 'Extend' do |sp|
        # GooglePlusSDK
        sp.subspec 'GooglePlusSDK' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Extend/GooglePlusSDK/GoogleOpenSource.framework', 'Official-Sources/ShareSDK/Extend/GooglePlusSDK/GooglePlus.framework'
            ssp.resource = 'Official-Sources/ShareSDK/Extend/GooglePlusSDK/GooglePlus.bundle'
            ssp.frameworks = 'CoreMotion', 'CoreLocation', 'MediaPlayer', 'AssetsLibrary', 'AddressBook'
        end

        # QQConnectSDK
        sp.subspec 'QQConnectSDK' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Extend/QQConnectSDK/TencentOpenAPI.framework'
            ssp.resource = 'Official-Sources/ShareSDK/Extend/QQConnectSDK/TencentOpenApi_IOS_Bundle.bundle'
            ssp.libraries = 'sqlite3'
        end

        # SinaWeiboSDK
        sp.subspec 'SinaWeiboSDK' do |ssp|
            ssp.vendored_libraries = "Official-Sources/ShareSDK/Extend/SinaWeiboSDK/*.a"
            ssp.resource = 'Official-Sources/ShareSDK/Extend/SinaWeiboSDK/WeiboSDK.bundle'
            ssp.frameworks = 'ImageIO', 'AdSupport'
            ssp.source_files = "Official-Sources/ShareSDK/Extend/SinaWeiboSDK/*.{h,m}"
            ssp.public_header_files = "Official-Sources/ShareSDK/Extend/SinaWeiboSDK/*.h"
        end

        # WeChatSDK
        sp.subspec 'WeChatSDK' do |ssp|
            ssp.vendored_libraries = "Official-Sources/ShareSDK/Extend/WeChatSDK/*.a"
            ssp.source_files = "Official-Sources/ShareSDK/Extend/WeChatSDK/*.{h,m}"
            ssp.public_header_files = "Official-Sources/ShareSDK/Extend/WeChatSDK/*.h"
            ssp.libraries = 'sqlite3'
        end

        # YiXinSDK
        sp.subspec 'YiXinSDK' do |ssp|
            ssp.vendored_libraries = "Official-Sources/ShareSDK/Extend/YiXinSDK/*.a"
            ssp.source_files = "Official-Sources/ShareSDK/Extend/YiXinSDK/*.{h,m}"
            ssp.public_header_files = "Official-Sources/ShareSDK/Extend/YiXinSDK/*.h"
        end

        # Pinterest.embeddedframework
        sp.subspec 'Pinterest.embeddedframework' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Extend/Pinterest.embeddedframework/Pinterest.framework'
            ssp.resource = 'Official-Sources/ShareSDK/Extend/Pinterest.embeddedframework/Resources/PinterestSDKResources.bundle'
        end

        # RenRenSDK
        sp.subspec 'RenRenSDK' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Extend/RenRenSDK/RennSDK.framework'
            ssp.resource = 'Official-Sources/ShareSDK/Extend/RenRenSDK/RennSDK.bundle'
        end

        # APSocialSDK
        sp.subspec 'APSocialSDK' do |ssp|
            ssp.vendored_libraries = "Official-Sources/ShareSDK/Extend/APSocialSDK/*.a"
            ssp.source_files = "Official-Sources/ShareSDK/Extend/APSocialSDK/*.{h,m}"
            ssp.public_header_files = "Official-Sources/ShareSDK/Extend/APSocialSDK/*.h"
        end
    end

    # 分享和登陆平台
    s.subspec 'Connection' do |sp|
        sp.default_subspecs = 'SMS', 'Mail', 'Copy', 'Print', 'SinaWeibo', 'WeChat', 'QQ', 'QZone',  'TencentWeibo', 'GooglePlus', 'RenRen', 'YiXin', 'Pinterest', 'Facebook', 'Dropbox', 'DouBan', 'EverNote', 'Flickr', 'Instagram', 'Instapaper', 'KaiXin', 'Twitter', 'Tumblr', 'WhatsApp', 'VKontakte', 'KaKaoStory', 'KaKaoTalk', 'Line', 'LinkedIn', 'Pocket', 'MingDao', 'YouDaoNote', 'AliPaySocial'

        # 短信
        sp.subspec 'SMS' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/SMSConnection.framework'
            ssp.frameworks = 'MessageUI'
        end

        # 邮件
        sp.subspec 'Mail' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/MailConnection.framework'
            ssp.frameworks = 'MessageUI'
        end

        # 拷贝
        sp.subspec 'Copy' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/CopyConnection.framework'
        end

        # 打印
        sp.subspec 'Print' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/PrintConnection.framework'
        end

        # 新浪微博
        sp.subspec 'SinaWeibo' do |ssp|
            ssp.dependency 'MobShareSDK/Extend/SinaWeiboSDK'
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/SinaWeiboConnection.framework'
        end

        # 微信
        sp.subspec 'WeChat' do |ssp|
            ssp.dependency 'MobShareSDK/Extend/WeChatSDK'
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/WeChatConnection.framework'
        end

        # 腾讯QQ
        sp.subspec 'QQ' do |ssp|
            ssp.dependency 'MobShareSDK/Extend/QQConnectSDK'
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/QQConnection.framework'
        end

        # QQ空间
        sp.subspec 'QZone' do |ssp|
            ssp.dependency 'MobShareSDK/Extend/QQConnectSDK'
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/QZoneConnection.framework'
        end

        # 腾讯微博
        sp.subspec 'TencentWeibo' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/TencentWeiboConnection.framework'
            ssp.frameworks = 'Social', 'Accounts'
        end

        # Google+
        sp.subspec 'GooglePlus' do |ssp|
            ssp.dependency 'MobShareSDK/Extend/GooglePlusSDK'
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/GooglePlusConnection.framework'
        end

        # 人人网
        sp.subspec 'RenRen' do |ssp|
            ssp.dependency 'MobShareSDK/Extend/RenRenSDK'
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/RenRenConnection.framework'
        end

        # 易信
        sp.subspec 'YiXin' do |ssp|
            ssp.dependency 'MobShareSDK/Extend/YiXinSDK'
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/YiXinConnection.framework'
        end

        # Pinterest
        sp.subspec 'Pinterest' do |ssp|
            ssp.dependency 'MobShareSDK/Extend/Pinterest.embeddedframework'
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/PinterestConnection.framework'
        end

        # Facebook
        sp.subspec 'Facebook' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/FacebookConnection.framework'
        end

        # Dropbox
        sp.subspec 'Dropbox' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/DropboxConnection.framework'
        end

        # 豆瓣
        sp.subspec 'DouBan' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/DouBanConnection.framework'
        end

        # 印象笔记
        sp.subspec 'EverNote' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/EverNoteConnection.framework'
        end

        # Flickr
        sp.subspec 'Flickr' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/FlickrConnection.framework'
        end

        # Instagram
        sp.subspec 'Instagram' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/InstagramConnection.framework'
        end

        # Instapaper
        sp.subspec 'Instapaper' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/InstapaperConnection.framework'
            ssp.resource = 'Official-Sources/ShareSDK/Connection/InstapaperResource.bundle'
        end

        # 开心网
        sp.subspec 'KaiXin' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/KaiXinConnection.framework'
        end

        # Twitter
        sp.subspec 'Twitter' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/TwitterConnection.framework'
        end

        # Tumblr
        sp.subspec 'Tumblr' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/TumblrConnection.framework'
        end

        # WhatsApp
        sp.subspec 'WhatsApp' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/WhatsAppConnection.framework'
        end

        # VKontakte
        sp.subspec 'VKontakte' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/VKontakteConnection.framework'
        end

        # KaKaoStory
        sp.subspec 'KaKaoStory' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/KaKaoStoryConnection.framework'
        end

        # KaKaoTalk
        sp.subspec 'KaKaoTalk' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/KaKaoTalkConnection.framework'
        end

        # Line
        sp.subspec 'Line' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/LineConnection.framework'
        end

        # LinkedIn
        sp.subspec 'LinkedIn' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/LinkedInConnection.framework'
        end

        # Pocket
        sp.subspec 'Pocket' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/PocketConnection.framework'
        end

        # 明道
        sp.subspec 'MingDao' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/MingDaoConnection.framework'
        end

        # 有道云笔记
        sp.subspec 'YouDaoNote' do |ssp|
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/YouDaoNoteConnection.framework'
        end

        # 支付宝
        sp.subspec 'AliPaySocial' do |ssp|
            ssp.dependency 'MobShareSDK/Extend/APSocialSDK'
            ssp.vendored_frameworks = 'Official-Sources/ShareSDK/Connection/AliPaySocialConnection.framework'
        end
    end
end
