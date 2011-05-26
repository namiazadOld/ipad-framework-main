//
//  Utilities.m
//  iPadFramework
//
//  Created by Nami on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Utilities.h"
#import "iBaseControl.h"
#import "Constants.h"
#import "Tuple1.h"


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
	
	if (view != NULL && [view isEqual:[container getChildrenHolder]])
		return;
	
	if (view != NULL)
		[[container getChildrenHolder] addSubview:view];
		
	[widget setParentWidget:container];
	[widget parentChanged:container];
	[container.children addObject:widget];
}

+(BindableObject*) InitWithType: (TypedValue*) tv
{
	if ([tv.type isEqualToString:NUM_TYPE])
		return [[BindableObject alloc] initWithNumber:[tv.value floatValue]];

	if ([tv.type isEqualToString:BOOL_TYPE])
		return [[BindableObject alloc] initWithBool:[tv.value boolValue]];
	
	
	return [[BindableObject alloc] initWithValue:tv.value];
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

+(id) Tuple: (NSArray*)values
{
	switch ([values count]) {
		case 1:
		{
			return [[Tuple1 alloc] initialize:values];
			break;
		}
		default:
			break;
	}
}

@end