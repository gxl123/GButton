//
//  GButton.m
//  testGButton
//
//  Created by gxl on 2018/5/7.
//  Copyright © 2018年 gxl. All rights reserved.
//

#import "GButton.h"

typedef void(^buttonClickedBlock)(void);

@interface GButton()

@property (nonatomic, copy) buttonClickedBlock buttonClickedBlock;

@end

@implementation GButton

#pragma mark - 带阴影边框按钮
- (instancetype)initWithShadow{
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

#pragma mark - 带Block按钮
- (instancetype)initWithBlock: (void (^)(void))block{
    self = [super init];
    if (self) {
        _buttonClickedBlock = block;
        [self addTarget:self action:@selector(_btnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)_btnAction:(UIButton *)sender{
    if (_buttonClickedBlock) {
        _buttonClickedBlock();
    }
}
@end
