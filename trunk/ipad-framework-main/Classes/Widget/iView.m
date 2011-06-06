//
//  iView.m
//  iPadFramework
//
//  Created by Nami on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iView.h"
#import "Constants.h"
#import "Utilities.h"


@implementation iView



-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	viewController = [[UIViewController alloc]init];
	[super render:arguments container: parent elements: elements];
	return self;
}

-(CGRect) getFrame
{
	return self.viewController.view.frame;
}

-(UIView*) getView
{
	return self.viewController.view;
}

-(UIView*) getChildrenHolder
{
	return self.viewController.view;
}

-(void) addBodyControl:(iBaseControl*) widget
{
	[Utilities AddControl:widget ToContainer:self];
}

-(void) manageArgument:(BindableObject *)bo at:(int)index
{
	//hide super method
}

@end
