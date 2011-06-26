//
//  iSplitView.m
//  ipad-framework-main
//
//  Created by Nami on 6/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iSplitView.h"

@implementation iSplitView
@synthesize splitView, master, detail;

-(iBaseControl*) render: (NSMutableArray*) arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	self.splitView = [[UISplitViewController alloc] init];
	[super render:arguments container: parent elements: elements];
	
	UINavigationController *masterNav = [[[UINavigationController alloc] initWithRootViewController:self.master.masterView]autorelease];
	UINavigationController *detailNav = [[[UINavigationController alloc] initWithRootViewController:self.detail.detailView] autorelease];
	
	splitView.viewControllers = [NSArray arrayWithObjects:masterNav, detailNav, nil];
	splitView.delegate = self.detail.detailView;
	
	return self;
}

-(void) initializeMaster: (iCustomControl*) content
{
	self.master = [[iMaster alloc] render:[[NSMutableArray alloc] init] container:self elements:NULL];
	[content render:[[NSMutableArray alloc] init] container:self.master elements:NULL];
	[content finilize];
	[self.master addBodyControl:content];
	[self addBodyControl:self.master];
}

-(void) initializeDetail: (iCustomControl*) content
{
	self.detail = [[iDetail alloc] render:[[NSMutableArray alloc] init] container:self elements:NULL];
	[content render:[[NSMutableArray alloc] init] container:self.detail elements:NULL];
	[content finilize];
	[self.detail addBodyControl:content];
	[self addBodyControl:self.detail];
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 0:
		{
			[self initializeMaster:(iCustomControl*)bo.value];
			break;
		}
		case 1:
		{
			[self initializeDetail:(iCustomControl*)bo.value];
			break;
		}
		case 2:
		{
			self.detail.titleBindableObject = bo;
			self.detail.title = (NSString*)bo.value;
			break;
		}
		case 3:
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
	return self.splitView.view.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.splitView.view.frame = frame;
}

-(UIView*) getView
{
	return self.splitView.view;
}


@end
