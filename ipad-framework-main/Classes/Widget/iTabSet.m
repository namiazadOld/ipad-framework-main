//
//  iTabSet.m
//  iPadFramework
//
//  Created by Nami on 5/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iTabSet.h"
#import "Tuple3.h"
#import "iTabPage.h"
#import "iCustomControl.h"
#import "Utilities.h"


@implementation iTabSet
@synthesize tabController;

-(iBaseControl*) initialize: (NSMutableArray*) arguments container: (iBaseControl*)parent
{
	self.tabController = [[UITabBarController alloc] init];
	[super initialize:arguments container: parent];
	return self;
}

-(void) initializeTabPages: (NSArray*) tabPages
{
	NSMutableArray* actualPages = [[NSMutableArray alloc] init];
	for (BindableObject* bo in tabPages)
	{
		Tuple3* tuple = (Tuple3*)bo.value;
		iTabPage* tabPage = [[iTabPage alloc] initialize:[[NSMutableArray alloc] initWithObjects:tuple._1, tuple._2, nil] container:self];
		
		iCustomControl* content = [(iCustomControl*)tuple._3.value initialize:[[NSMutableArray alloc] init] container:tabPage];
		[content finilize];
				
		[tabPage addBodyControl:content];
		[self addBodyControl:tabPage];
		[actualPages addObject:tabPage.tabPage];
	}

	
	[self.tabController setViewControllers:actualPages];
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 0:
		{
			[self initializeTabPages:(NSArray*)bo.value];
			break;
		}
		case 1:
		{
			[self setControlStyle:(UIStyle*)bo.value];
			break;
		}
		default:
			break;
	}	
}

-(CGRect) getFrame
{
	return self.tabController.view.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.tabController.view.frame = frame;
}

-(UIView*) getView
{
	return self.tabController.view;
}

@end
