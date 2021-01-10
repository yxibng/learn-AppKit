//
//  CustomTableCellView.h
//  DbyMeeting-Mac
//
//  Created by yxibng on 2019/12/17.
//  Copyright © 2019 yxibng. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomTableCellView : NSTableCellView
@property (nonatomic, strong) NSString *string;
@property (nonatomic, strong) NSTextField *label;

@end

NS_ASSUME_NONNULL_END
