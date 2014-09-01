cordova_plugin-KakaoLinkPlugin
==============

##Text type

        
###*Usage*
        KakaoLinkPlugin.call("kakaotalk share...");


##Api import

###*common* 
Create kakao App [Kakao Developers](https://developers.kakao.com/apps).


###*iOS setting*
        1. cordova plugin add.
        
            cordova plugin add https://github.com/gnustory/cordova_plugin-KakaoLinkPlugin.git;
        
        
        2. xcode run
        
        
        3. Project > Info > URL Types > URL Schemes
        
            'kakao' + app key... ex) kakaoe8aa9b80eb803ab5ca55a22b2d0ff46b
        
        
        4. Folder > Resources > *.plist
        
            key : KAKAO_APP_KEY
            type : String
            value : your key... ex) e8aa9b80eb803ab5ca55a22b2d0ff46b
        
        
        5. Build Settings > Linking > Other Linker Flags > add
        
            -all_load
        
###*Android setting*
        1. cordova plugin add.