//
//  iDetail.m
//  ipad-framework-main
//
//  Created by Nami on 6/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iDetail.h"


@implementation iDetail
@synthesize detailView, title, titleBindableObject;

-(NSString*) title
{
	return detailView.barTitle;
}

-(void)setTitle:(NSString *)aString
{
	@synchronized(self)
	{
		if (self.detailView.barTitle != aString)
		{
			self.detailView.barTitle = [aString retain];
			[aString release];
		}
	}
}

-(iBaseControl*) render: (NSMutableArray*) arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	self.detailView = [[iDetailViewController alloc] init];
	[super render:arguments container: parent elements: elements];
	return self;
}


-(void) eventOccured:(id)sender
{
	if (!self.locked)
	{
		self.locked = YES;
		[self.titleBindableObject setValue:[self.detailView.barTitle retain]];
		self.locked = NO;
	}
}

-(void) changeNotification:(BindableObject*) bo
{
	if (!self.locked)
	{
		self.locked = YES;
		if ([bo isEqual:self.titleBindableObject])
			self.detailView.barTitle = (NSString*) bo.value;
		self.locked = NO;
	}
}

-(CGRect) getFrame
{
	return self.detailView.view.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.detailView.view.frame = frame;
}

-(UIView*) getView
{
	return self.detailView.view;
}



@end
