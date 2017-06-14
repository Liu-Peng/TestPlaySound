//
//  ViewController.m
//  TestPlaySound
//
//  Created by admin on 17/6/13.
//  Copyright © 2017年 LiuPeng. All rights reserved.
//

#import "ViewController.h"
#import "LPPlaySound.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)playSound:(UIButton *)btn {
    switch (btn.tag) {
        case 1:
            
            [LPPlaySound playingSystemSoundWithSoundID:(UInt32)1007 isVibrate:NO];

            break;
        case 2:
            
            [LPPlaySound playingSystemSoundWithSoundName:@"RingerChanged" ofType:@"caf"];
            
            break;
        case 3:
            
             [LPPlaySound playingBundleSoundWithSoundName:@"airplane.aac"];
            
            break;
        default:
            break;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"系统SoundId" forState:UIControlStateNormal];
    btn.tag = 1;
    [btn addTarget:self action:@selector(playSound:) forControlEvents:UIControlEventTouchUpInside];
    [btn setFrame:CGRectMake(50, 50, 200, 40)];
    btn.layer.cornerRadius = 10;
    [self.view addSubview:btn];
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"系统音效名称" forState:UIControlStateNormal];
    btn.tag = 2;
    [btn addTarget:self action:@selector(playSound:) forControlEvents:UIControlEventTouchUpInside];
    [btn setFrame:CGRectMake(50, 100, 200, 40)];
    btn.layer.cornerRadius = 10;
    [self.view addSubview:btn];
    
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"资源文件" forState:UIControlStateNormal];
    btn.tag = 3;
    [btn addTarget:self action:@selector(playSound:) forControlEvents:UIControlEventTouchUpInside];
    [btn setFrame:CGRectMake(50, 150, 200, 40)];
    btn.layer.cornerRadius = 10;
    [self.view addSubview:btn];
    
    
    //使用系统soundid 来播放音效
//    [LPPlaySound playingSystemSoundWithSoundID:(UInt32)1007 isVibrate:NO];
    //系统音效ID查看：http://iphonedevwiki.net/index.php/AudioServices
    
    //使用系统音效名称 来播放音效（需使用真机调试）
//    [LPPlaySound playingSystemSoundWithSoundName:@"RingerChanged" ofType:@"caf"];
    
    //使用资源文件 来播放音效
//    [LPPlaySound playingBundleSoundWithSoundName:@"airplane.aac"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
