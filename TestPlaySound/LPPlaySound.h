//
//  LPPlaySound.h
//  TestPlaySound
//
//  Created by admin on 17/6/13.
//  Copyright © 2017年 LiuPeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LPPlaySound : NSObject
/**
 *  @brief  播放系统音效
 *
 *  @param soundId 系统音效id
 *  @param vibrate 是否震动播放
 */
+(void)playingSystemSoundWithSoundID:(UInt32)soundId isVibrate:(BOOL)vibrate;

/**
 *  @brief  播放系统音效
 *
 *  @param name 系统音效名称
 *  @param type 系统音效类型
 */
+(void)playingSystemSoundWithSoundName:(NSString *)name ofType:(NSString *)type;

/**
 *  @brief  播放系统音效
 *
 *  @param name 系统音效名称
 *  @param type 系统音效类型
 *  @param vibrate 是否震动播放
 */
+(void)playingSystemSoundWithSoundName:(NSString *)name ofType:(NSString *)type isVibrate:(BOOL)vibrate;

/**
 *  @brief  播放本地资源音效
 *
 *  @param name 音效文件名
 */
+(void)playingBundleSoundWithSoundName:(NSString *)name;

/**
 *  @brief  播放本地资源音效
 *
 *  @param name 音效文件名
 *  @param vibrate 是否震动播放
 */
+(void)playingBundleSoundWithSoundName:(NSString *)name isVibrate:(BOOL)vibrate;

@end
