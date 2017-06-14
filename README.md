# TestPlaySound
播放音效


### 安装

```ruby
	pod 'LPPlaySound'
```

### 使用
```objc
    //使用系统soundid 来播放音效
    [LPPlaySound playingSystemSoundWithSoundID:(UInt32)1007 isVibrate:NO];
    //系统音效ID查看：http://iphonedevwiki.net/index.php/AudioServices
    
    //使用系统音效名称 来播放音效（需使用真机调试）
    [LPPlaySound playingSystemSoundWithSoundName:@"RingerChanged" ofType:@"caf"];
    
    //使用资源文件 来播放音效
    [LPPlaySound playingBundleSoundWithSoundName:@"airplane.aac"];
```

