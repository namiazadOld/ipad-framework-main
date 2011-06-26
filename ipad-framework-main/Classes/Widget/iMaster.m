//
//  iMaster.m
//  ipad-framework-main
//
//  Created by Nami on 6/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iMaster.h"


@implementation iMaster
@synthesize masterView, titleBindableObject;

-(iBaseControl*) render: (NSMutableArray*) arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	self.masterView = [[UIViewController alloc] init];
	[super render:arguments container: parent elements: elements];
	return self;
}

-(CGRect) getFrame
{
	return self.masterView.view.frame;
}

-(void)setFrame:(CGRect)frame
{
	self.masterView.view.frame = frame;
}

-(UIView*) getView
{
	return self.masterView.view;
}



@end
