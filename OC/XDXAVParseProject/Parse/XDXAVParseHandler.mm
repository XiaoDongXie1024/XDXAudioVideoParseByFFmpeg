//
//  XDXAVParseHandler.m
//  XDXAVParseProject
//
//  Created by 小东邪 on 2019/6/2.
//  Copyright © 2019 小东邪. All rights reserved.
//

#import "XDXAVParseHandler.h"


#import "ViewController.h"

#ifdef __cplusplus
extern "C" {
#endif
    
#include "libavutil/opt.h"
#include "libavcodec/avcodec.h"
#include "libavformat/avformat.h"
#include "libswscale/swscale.h"
    
#ifdef __cplusplus
};
#endif


@implementation XDXAVParseHandler

- (instancetype)init {
    if (self = [super init]) {
        av_register_all();
    }
    return self;
}

@end
