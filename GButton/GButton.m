//
//  GButton.m
//  testGButton
//
//  Created by gxl on 2018/5/7.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "GButton.h"

@implementation GButton

- (instancetype)init{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor whiteColor];
        [self setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        self.layer.cornerRadius = 5;
        self.layer.shadowOffset =  CGSizeMake(2, 2);
        self.layer.shadowOpacity = 0.2;
        self.layer.borderColor = [UIColor blueColor].CGColor;
        self.layer.borderWidth = 2;
        self.layer.shadowColor = [UIColor blackColor].CGColor;//[UIColor c9_Color].CGColor;
    }
    return self;
}

- (void)setSelected:(BOOL)selected{
    [super setSelected:selected];
    self.alpha = selected ? 1:0.5;
}

@end
