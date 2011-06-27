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

-(iBaseControl*) render: (NSMutableArray*) arguments container: (iBaseControl*)parent elements: (iBaseControl*) _elements
{
	self.splitView = [[UISplitViewController alloc] init];
	self.splitView.view.backgroundColor = [UIColor blackColor];
	
	self.detail = [[iDetail alloc] init];
	self.master = [[iMaster alloc] init];
	UINavigationController *masterNav = [[[UINavigationController alloc] initWithRootViewController:self.master.masterView]autorelease];
	UINavigationController *detailNav = [[[UINavigationController alloc] initWithRootViewController:self.detail.detailView] autorelease];
	[masterNav setNavigationBarHidden:YES];
	[detailNav setNavigationBarHidden:YES];
		
	[super render:arguments container: parent elements:_elements];
	
	masterNav.view.frame = [self.master getFrame];
	detailNav.view.frame = [self.detail getFrame];
	
	[self.splitView.view addSubview:masterNav.view];
	[self.splitView.view addSubview:detailNav.view];
	
	return self;
}

-(void) initializeMaster: (iCustomControl*) content
{
	[self.master render:[[NSMutableArray alloc] init] container:self elements:NULL];
	[content render:[[NSMutableArray alloc] init] container:self.master elements:NULL];
	[content finilize];
	[self.master addBodyControl:content];
	[self addBodyControl:self.master];
}

-(void) initializeDetail: (iCustomControl*) content
{
	[self.detail render:[[NSMutableArray alloc] init] container:self elements:NULL];
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
