//
//  FSCalendarEventView.m
//  FSCalendarSwiftExample
//
//  Created by skonb on 2017/10/24.
//  Copyright © 2017年 wenchao. All rights reserved.
//

#import "FSCalendarEventView.h"

@implementation FSCalendarEventView
#pragma mark - Life cycle

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)initialize
{
    UIStackView *stackView = [UIStackView new];
    stackView.axis = UILayoutConstraintAxisHorizontal;
    stackView.distribution = UIStackViewDistributionFill;
    [self addSubview:stackView];
    self.stackView = stackView;
    
    UIView *v = [UIView new];
    [self.stackView addArrangedSubview:v];
    self.colorView = v;
    
    UILabel *label = [UILabel new];
    [self.stackView addArrangedSubview:label];
    self.eventTitleLabel = label;
    self.eventTitleLabel.minimumScaleFactor = 0.5;
    [self.eventTitleLabel setContentHuggingPriority:251 forAxis:UILayoutConstraintAxisHorizontal];

   
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.stackView.frame = self.bounds;
    self.colorView.frame = CGRectMake(0, 0, 5, self.bounds.size.height);
}


#pragma mark - Event related methods
-(void)setEvent:(EKEvent *)event{
    _event = event;
    [self configureAppearances];
}

-(void)configureAppearances{
    self.eventTitleLabel.text = self.event.title;
    if(self.event.isAllDay){
        self.colorView.backgroundColor = [UIColor clearColor];
        self.eventTitleLabel.backgroundColor = [UIColor colorWithCGColor:self.event.calendar.CGColor];
    }else{
        self.colorView.backgroundColor = [UIColor colorWithCGColor:self.event.calendar.CGColor];
        self.eventTitleLabel.backgroundColor = [UIColor clearColor];
    }
    
}
@end
