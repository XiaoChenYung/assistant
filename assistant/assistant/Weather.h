//
//  Weather.h
//  assistant
//
//  Created by 杨晓晨 on 15/10/1.
//  Copyright (c) 2015年 yangxiaochen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weather : NSObject
+ (void)loadWeatherDataFinish:(void (^)(NSArray *weatherArr))finished;
@end
