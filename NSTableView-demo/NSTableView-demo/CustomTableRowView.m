//
//  CustomTableRowView.m
//  DbyMeeting-Mac
//
//  Created by yxibng on 2019/12/17.
//  Copyright © 2019 yxibng. All rights reserved.
//

#import "CustomTableRowView.h"

@implementation CustomTableRowView

// 自定义 row 被选中的背景色
-(void)drawSelectionInRect:(NSRect)dirtyRect {
    
    if (self.selectionHighlightStyle != NSTableViewSelectionHighlightStyleNone) {
        [[NSColor cyanColor] setFill];
        
        NSBezierPath *path = [NSBezierPath bezierPathWithRect:NSInsetRect(self.bounds, 0, 0)];
        [path fill];
        [path stroke];
    }
}

//自定义 row 背景色
- (void)setBackgroundColor:(NSColor *)backgroundColor {
    super.backgroundColor = [NSColor greenColor];
}

@end
