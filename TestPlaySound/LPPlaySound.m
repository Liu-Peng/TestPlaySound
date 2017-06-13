//
//  LPPlaySound.m
//  TestPlaySound
//
//  Created by admin on 17/6/13.
//  Copyright © 2017年 LiuPeng. All rights reserved.
//

#import "LPPlaySound.h"
#import <AudioToolbox/AudioToolbox.h>

#define iOS9Later ([UIDevice currentDevice].systemVersion.floatValue >= 9.0f)

@implementation LPPlaySound

+(void)playingSystemSoundWithSoundID:(UInt32)soundId isVibrate:(BOOL)vibrate{
    
    if (vibrate) {
        if (iOS9Later) {
            AudioServicesPlayAlertSoundWithCompletion(soundId, ^{
                AudioServicesDisposeSystemSoundID(soundId);//结束销毁
            });
        }else{
            AudioServicesPlayAlertSound(soundId);
            AudioServicesAddSystemSoundCompletion(soundId, NULL, NULL, soundCompleteCallBack, NULL);
        }

    }else {
        if (iOS9Later) {
            AudioServicesPlaySystemSoundWithCompletion(soundId, ^{
                AudioServicesDisposeSystemSoundID(soundId);//结束销毁
            });
        }else{
            AudioServicesPlaySystemSound(soundId);
            AudioServicesAddSystemSoundCompletion(soundId, NULL, NULL, soundCompleteCallBack, NULL);
        }
   
    }
    
}
void soundCompleteCallBack(SystemSoundID soundID, void * clientDate) {

    NSLog(@"播放完成");
    AudioServicesDisposeSystemSoundID(soundID);
//    AudioServicesRemoveSystemSoundCompletion(soundID);
    
}

+(void)playingSystemSoundWithSoundName:(NSString *)name ofType:(NSString *)type {
 
    [LPPlaySound playingSystemSoundWithSoundName:name ofType:type isVibrate:NO];
    
}

+(void)playingSystemSoundWithSoundName:(NSString *)name ofType:(NSString *)type isVibrate:(BOOL)vibrate{
    
    NSString *path = [[NSBundle bundleWithIdentifier:@"com.apple.UIKit"] pathForResource:name ofType:type];
    if (path) {
        SystemSoundID theSoundID;
        OSStatus error =  AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:path], &theSoundID);
        if (error == kAudioServicesNoError) {
            
            [LPPlaySound playingSystemSoundWithSoundID:theSoundID isVibrate:vibrate];
            
        }else {
            NSLog(@"Failed to create sound ");
        }
    }else{
        NSLog(@"Failed to create sound path");
    }
}

+(void)playingBundleSoundWithSoundName:(NSString *)name {
    
    [LPPlaySound playingBundleSoundWithSoundName:name isVibrate:NO];
}

+(void)playingBundleSoundWithSoundName:(NSString *)name isVibrate:(BOOL)vibrate{
    
    NSURL *fileURL = [[NSBundle mainBundle] URLForResource:name withExtension:nil];
    
    if (fileURL != nil)
    {
        SystemSoundID theSoundID;
        OSStatus error = AudioServicesCreateSystemSoundID((__bridge CFURLRef)fileURL, &theSoundID);
        if (error == kAudioServicesNoError){
            
            [LPPlaySound playingSystemSoundWithSoundID:theSoundID isVibrate:vibrate];
            
        }else {
            NSLog(@"Failed to create sound ");
        }
    }else{
        NSLog(@"Failed to create sound url");
    }
}

@end
