//
//  city.h
//  assistant
//
//  Created by 杨晓晨 on 15/10/1.
//  Copyright (c) 2015年 yangxiaochen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface city : NSObject
//"aqi": "30", //空气质量指数
//"co": "0", //一氧化碳1小时平均值(ug/m³)
//"no2": "10", //二氧化氮1小时平均值(ug/m³)
//"o3": "94", //臭氧1小时平均值(ug/m³)
//"pm10": "10", //PM10 1小时平均值(ug/m³)
//"pm25": "7", //PM2.5 1小时平均值(ug/m³)
//"qlty": "优", //空气质量类别
//"so2": "3" //二氧化硫1小时平均值(ug/m³)
@property (nonatomic, copy) NSString *aqi;
@property (nonatomic, copy) NSString *pm25;
@property (nonatomic, copy) NSString *qlty;
@end
