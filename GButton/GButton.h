//
//  GButton.h
//  testGButton
//
//  Created by gxl on 2018/5/7.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GButton : UIButton

- (instancetype)initWithShadow;
- (instancetype)initWithBlock: (void (^)(void))block;

@end
