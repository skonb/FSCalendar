//
//  FSCalendarEventView.h
//  FSCalendarSwiftExample
//
//  Created by skonb on 2017/10/24.
//  Copyright © 2017年 wenchao. All rights reserved.
//

#import <UIKit/UIKit.h>
@import EventKit;

@interface FSCalendarEventView : UIView

@property (nonatomic, strong) EKEvent *event;
@property (nonatomic, weak) UIView *colorView;
@property (nonatomic, weak) UILabel *eventTitleLabel;
@property (nonatomic, weak) UIStackView *stackView;

@end
