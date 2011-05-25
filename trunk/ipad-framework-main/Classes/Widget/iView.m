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


-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	viewController = [[UIViewController alloc]init];
	[super initialize:arguments container: parent];
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
