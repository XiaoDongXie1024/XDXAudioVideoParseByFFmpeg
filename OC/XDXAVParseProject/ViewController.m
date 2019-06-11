//
//  ViewController.m
//  XDXAVParseProject
//
//  Created by 小东邪 on 2019/6/2.
//  Copyright © 2019 小东邪. All rights reserved.
//

#import "ViewController.h"
#import "XDXAVParseHandler.h"

// FFmpeg Header File
#ifdef __cplusplus
extern "C" {
#endif
    
#include "libavformat/avformat.h"
#include "libavcodec/avcodec.h"
#include "libavutil/avutil.h"
#include "libswscale/swscale.h"
#include "libswresample/swresample.h"
#include "libavutil/opt.h"
    
#ifdef __cplusplus
};
#endif

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *startParseBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)startParseDidClicked:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"MOV"];
    XDXAVParseHandler *parseHandler = [[XDXAVParseHandler alloc] initWithPath:path];
    [parseHandler startParseGetAVPackeWithCompletionHandler:^(BOOL isVideoFrame, BOOL isFinish, AVPacket packet) {
        if (isFinish) {
            NSLog(@"Parse finish!");
            return;
        }
        
        if (isVideoFrame) {
            
        }else {
            
        }
    }];
}

@end
