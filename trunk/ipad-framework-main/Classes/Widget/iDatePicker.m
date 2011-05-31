//
//  iDateTimePicker.m
//  ipad-framework-main
//
//  Created by Nami on 5/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iDateTimePicker.h"


@implementation iDateTimePicker
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
	return NO;
}

//-(void)setPlaceholder:(NSString *)aString
//{
//	@synchronized(self)
//	{
//		if (textBox.placeholder != aString)
//		{
//			textBox.placeholder = [aString retain];
//			[aString release];
//		}
//	}
//}
//

@end
