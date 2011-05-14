//
//  Utilities.m
//  iPadFramework
//
//  Created by Nami on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Utilities.h"
#import "iBaseControl.h"


@implementation Utilities

static UIViewController* currentView;

+(void) ShowError: (id)sender title: (NSString*)title content: (NSString*)content
{
	UIAlertView *someError = [[UIAlertView alloc] 
							  initWithTitle: title 
							  message: content 
							  delegate:sender 
							  cancelButtonTitle: @"Ok" 
							  otherButtonTitles: nil];
	[someError show];
	[someError release];

}

+(void) AddControl:(iBaseControl*) widget ToContainer: (iBaseControl*) container
{

	UIView* view = [widget getView];
	
	if (view != NULL)
		[[container getChildrenHolder] addSubview:view];
		
	[widget setParentWidget:container];
	[widget parentChanged:container];
	[container.children addObject:widget];
}


+(UIViewController*) CurrentView
{
	return currentView;
}

+(void) setCurrentView: (UIViewController*)viewController
{
	[currentView release];
	currentView = [viewController retain];
	[viewController release];
}

@end
