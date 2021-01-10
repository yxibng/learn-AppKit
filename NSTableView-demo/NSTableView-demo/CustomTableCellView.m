//
//  CustomTableCellView.m
//  DbyMeeting-Mac
//
//  Created by yxibng on 2019/12/17.
//  Copyright © 2019 yxibng. All rights reserved.
//

#import "CustomTableCellView.h"

@implementation CustomTableCellView

-(instancetype)initWithFrame:(NSRect)frameRect{
    self = [super initWithFrame:frameRect];
    if (self) {
        [self addSubview:self.label];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    if (self = [super initWithCoder:coder]) {
        [self addSubview:self.label];
    }
    return self;
}

- (void)setString:(NSString *)string {
    self.label.frame = CGRectMake(0, 0, 100, 20);
    self.label.stringValue = string;
}

//懒加载设置label
-(NSTextField *)label
{
    if (!_label) {
        _label = [[NSTextField alloc] initWithFrame:NSZeroRect];
        
        _label.editable = NO;
        _label.bordered = YES;
        _label.backgroundColor = [NSColor purpleColor];
    }
    return _label;
}



@end
