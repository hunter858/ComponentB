//
//  Consumter.m
//  test
//
//  Created by pengchao on 2023/10/19.
//

#import "Consumter.h"
//#import <AFNetworking/AFNetworking.h>
#import <SDWebImage/SDWebImageDownloader.h>
@implementation Consumter
-(CGFloat)coastNumber{
    return 100.0;
}

-(void)loadReuest {
//    NSString* url = @"http://192.168.1.161:80/test/test_get_";
//    // 请求query参数
//    NSDictionary *parameters = @{
//        @"name":@"1",
//        @"pass":@"2"
//    };
//    // 请求header参数[设置方式一]
//    NSDictionary *headers = @{
//        @"timestamp":@"12345678"
//    };
//
//    // 设置请求超时*
//    NSURLSessionConfiguration *conf = [NSURLSessionConfiguration defaultSessionConfiguration];
//    conf.timeoutIntervalForRequest = 30.0f;
//
//    // 创建请求管理器*
//    AFHTTPSessionManager *manager = [[AFHTTPSessionManager manager]initWithSessionConfiguration:conf];
//
//    // 使用系统默认最大并发*
//    manager.operationQueue.maxConcurrentOperationCount = NSOperationQueueDefaultMaxConcurrentOperationCount;
//
//    // 格式化请求出入参*
//    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
//    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
//
//    // 请求header参数[设置方式二(若在格式化请求出入参前添加则后台接收不到)]*
//    // ...
//    [manager.requestSerializer setValue:@"iOS" forHTTPHeaderField:@"platform"];
//
//    // 响应头content type设置*
//    NSSet *sets = [NSSet
//                   setWithObjects:@"application/json",@"text/json",
//                   @"text/javascript",@"text/html",@"text/plain",
//                   @"application/atom+xml",@"application/xml",
//                   @"text/xml",@"image/png",@"image/jpeg",
//                   @"charset=utf-8", nil];
//    manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObjectsFromSet:sets];
//
//    // 具体请求
//    [manager GET:url parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSString *json = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
//        NSLog(@"请求成功url:%@,json:%@", task.currentRequest.URL, json);
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        NSLog(@"请求失败url:%@,error:%@", url, error);
//    }];
}

-(void)downloadImage{
    [[SDWebImageDownloader sharedDownloader] downloadImageWithURL:[NSURL URLWithString:@"https://cdn2.jianshu.io/assets/web/nav-logo-4c7bbafe27adc892f3046e6978459bac.png"] options:SDWebImageDownloaderProgressiveDownload progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
        NSLog(@"下载图片成功");
    } completed:^(UIImage * _Nullable image, NSData * _Nullable data, NSError * _Nullable error, BOOL finished) {
        NSLog(@"下载图片失败");
    }];
}
@end
