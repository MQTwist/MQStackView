//
//  MacroTool.m
//  MQStackView
//
//  Created by ma qi on 2020/11/12.
//

#import "MacroTool.h"


@implementation MacroTool

+ (CGFloat)getStatusHeight {
    UIWindowScene *windowScene = nil;
    for (UIWindowScene *scene in UIApplication.sharedApplication.connectedScenes) {
        if (scene.activationState == UISceneActivationStateForegroundActive) {
            windowScene = scene;
            break;
        }
    }
    return windowScene.statusBarManager.statusBarFrame.size.height;
}


@end
