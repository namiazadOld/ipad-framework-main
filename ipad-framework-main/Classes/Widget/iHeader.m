//
//  iHeader.m
//  iPadFramework
//
//  Created by Nami on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iHeader.h"
#import "NullObject.h"
#import "iView.h"


@implementation iHeader

@synthesize title, rightButton, leftButton, titleBindableObject;

-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container: parent elements: elements];
	return self;
}

-(void) observeBindableValueChanged:(BindableObject*) bo
{
	if (!self.locked)
	{
		self.locked = YES;
		self.title = (NSString*)bo.value;
		iView* view = (iView*)self.parentWidget;
		[view.viewController.navigationItem setTitle: self.title];
		self.locked = NO;
	}
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 0:
			titleBindableObject = bo;
			self.title = (NSString*)bo.value;
			break;
		case 1:
			[self setControlStyle:(UIStyle*)bo.value];
			break;
		default:
			break;
	}
}


-(void) parentChanged: (iBaseControl*)parent
{
	if ([parent isKindOfClass:[iView class]])
	{
		iView* view = (iView*)parent;
		[view.viewController.navigationController setNavigationBarHidden:NO];
		[view.viewController.navigationItem setTitle: self.title];
		
		if (self.rightButton != NULL)
			view.viewController.navigationItem.rightBarButtonItem = self.rightButton;
		
		if (self.leftButton != NULL)
			view.viewController.navigationItem.leftBarButtonItem = self.leftButton;
	}
}


@end
