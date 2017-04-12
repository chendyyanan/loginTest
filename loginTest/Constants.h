
//
//  Constants.h
//  loginTest
//
//  Created by Mr. Chen on 2017/4/6.
//  Copyright © 2017年 liezhong. All rights reserved.
//

#ifndef Constants_h
#define Constants_h
typedef NS_ENUM(NSInteger,ShapeType){
    kLineShap = 0,
    kRectShap,
    kEllipseShape,
    kImageShape
};

typedef NS_ENUM(NSInteger, ColorTabIndex){
    kRedcolorTab = 0,
    kBlueColorTab,
    kYellowColorTab,
    kGreenColorTab,
    kRandomColorTab
};

#define degressToRadian(x) (M_PI * (x) / 180.0)

#endif /* Constants_h */
