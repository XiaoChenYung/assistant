//
//  Weather.m
//  assistant
//
//  Created by 杨晓晨 on 15/10/1.
//  Copyright (c) 2015年 yangxiaochen. All rights reserved.
//

#import "Weather.h"

@implementation Weather
+ (void)loadWeatherDataFinish:(void (^)( NSArray*))finished {
    NSString *httpUrl = @"http://apis.baidu.com/heweather/weather/free";
    NSString *httpArg = @"city=beijing";
    NSString *urlStr = [[NSString alloc]initWithFormat: @"%@?%@", httpUrl, httpArg];
    NSURL *url = [NSURL URLWithString: urlStr];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL: url cachePolicy: NSURLRequestUseProtocolCachePolicy timeoutInterval: 10];
    [request setHTTPMethod: @"GET"];
    [request addValue: @" 712798c784173aecd74084c9bbbd9b14" forHTTPHeaderField: @"apikey"];
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
        NSArray *arr =dict[dict.keyEnumerator.nextObject];
        finished(arr);
       // NSLog(@"%@",dict);
        
    }] resume];
}
@end
