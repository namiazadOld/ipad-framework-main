//
//  iTabSet.m
//  iPadFramework
//
//  Created by Nami on 5/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iTabSet.h"


@implementation iTabSet
@synthesize tabController;

-(iBaseControl*) initialize: (NSMutableArray*) arguments container: (iBaseControl*)parent
{
	self.tabController = [[UITabBarController alloc] init];
	[super initialize:arguments container: parent];
	return self;
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 0:
		{
			
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


@end
