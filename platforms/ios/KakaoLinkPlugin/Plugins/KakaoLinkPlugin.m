//
//  KakaoLinkPlugin.m
//  KakaoTest
//
//  Created by GEUNWOO JANG on 2014. 8. 26..
//
//

#import "KakaoLinkPlugin.h"
#import <KakaoOpenSDK/KakaoOpenSDK.h>

@implementation KakaoLinkPlugin

- (void)call:(CDVInvokedUrlCommand *)command
{
    
    NSString* message = [command.arguments objectAtIndex:0];
    
    KakaoTalkLinkObject *label
    = [KakaoTalkLinkObject createLabel:message];
    [KOAppCall openKakaoTalkAppLink:@[label]];
    
}

@end
