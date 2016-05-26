//
//  sss.m
//  AdorablePetAPP
//
//  Created by 黄博闻 on 16/3/31.
//  Copyright (c) 2016年 黄博闻. All rights reserved.
//

#import "sss.h"

@implementation sss

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
/*
#import "Net.h"


__strong static AFHTTPRequestOperationManager *AFHTTPMgr;
__strong static Net *NetInstance=nil;

@implementation Net
+(Net *)getInstance{
    static dispatch_once_t  onceToken;
    dispatch_once(&onceToken,^{
        NetInstance= [[Net alloc]init];
        //初始化实例
        
        //一下是AFHTTPOerrationManager的配置
        AFHTTPMgr=[AFHTTPRequestOperationManager manager];
        
        //申明返回的结果是json类型
        AFHTTPMgr.responseSerializer=[AFJSONResponseSerializer serializer];
        
        //申明请求的数据是json类型
        AFHTTPMgr.requestSerializer=[AFJSONRequestSerializer serializer];
        
        //如果报接受类型不一致请替换一致text/xml或别的
        AFHTTPMgr.responseSerializer.acceptableContentTypes= [NSSet setWithObject:@"text/xml"];
        
        //设置超时时间
        AFHTTPMgr.requestSerializer.timeoutInterval=5;     });
    
        return NetInstance; }*/

@end
