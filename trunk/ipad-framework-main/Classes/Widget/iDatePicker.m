//
//  iDateTimePicker.m
//  ipad-framework-main
//
//  Created by Nami on 5/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iDatePicker.h"


@implementation iDatePicker
@synthesize datePicker, date, dateBindableObject, showTimeBindableObject, showTime;

-(NSDate*) date
{
	return datePicker.date;
}

-(void)setDate:(NSDate *)aDate
{
	@synchronized(self)
	{
		if (![[datePicker date] isEqualToDate:aDate])
		{
			datePicker.date = [aDate retain];
			[aDate release];
		}
	}
}

-(BOOL) showTime
{
	return datePicker.datePickerMode == UIDatePickerModeDateAndTime;
}

-(void)setShowTime:(BOOL)aBool
{
	@synchronized(self)
	{
		if (aBool)
			datePicker.datePickerMode = UIDatePickerModeDateAndTime;
		else 
			datePicker.datePickerMode = UIDatePickerModeDate;
	}
}

-(iBaseControl*) initialize: (NSMutableArray*) arguments container: (iBaseControl*)parent
{
	self.datePicker = [[UIDatePicker alloc] init];
	[super initialize:arguments container: parent];
	return self;
}

-(void) eventOccured:(id)sender
{
	if (!self.locked)
	{
		self.locked = YES;
		[self.dateBindableObject setValue:self.datePicker.date];
		if (datePicker.datePickerMode == UIDatePickerModeDateAndTime)
			[self.showTimeBindableObject setBoolValue:YES];
		else
			[self.showTimeBindableObject setBoolValue:NO];
		self.locked = NO;
	}
}

-(void) observeBindableValueChanged:(BindableObject*) bo
{
	if (!self.locked)
	{
		self.locked = YES;
		if ([bo isEqual:self.dateBindableObject])
			self.datePicker.date = (NSDate*) bo.value;
		else
			[self setShowTime:bo.boolValue];
		self.locked = NO;
	}
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 0:
			self.dateBindableObject = bo;
			[self setDate:(NSDate*)bo.value];
			break;
		case 1:
			self.showTimeBindableObject = bo;
			[self setShowTime:bo.boolValue];
			break;
		case 2:
			[self setControlStyle:(UIStyle*)bo.value];
			break;
		default:
			break;
	}
}

-(CGRect) getFrame
{
	return self.datePicker.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.datePicker.frame = frame;
}

-(UIView*) getView
{
	return self.datePicker;
}

-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
	[self.datePicker addTarget:target action:action forControlEvents:controlEvents];
}



@end
