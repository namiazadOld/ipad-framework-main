//
//  iWhen.m
//  ipad-framework-main
//
//  Created by Nami on 6/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iWhen.h"
#import "StylingManager.h"


@implementation iWhen
@synthesize when, elseWhen, condition, conditionBindableObject;

-(BOOL) condition
{
	return self.visible;
}

-(void)setCondition:(BOOL)aBool
{
	@synchronized(self)
	{
		if (aBool)
		{
			[self.when show];
			[self.elseWhen hide];
		}
		else
		{
			[self.when hide];
			[self.elseWhen show];
		}
		
		if ([StylingManager ordered])
			[StylingManager orderWidgets:[self getRootContainer]];
	}
}

-(void) changeNotification:(BindableObject*) bo
{
	if (!self.locked)
	{
		self.locked = YES;
		if ([bo isEqual:self.conditionBindableObject])
		{
			[self setCondition:bo.boolValue];
		}
		self.locked = NO;
	}
}


-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 0:
			self.conditionBindableObject = bo;
			[self setCondition:bo.boolValue];
			break;
		default:
			break;
	}
}

-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container: parent elements: elements];
	
	[self.when render:arguments container:parent elements:elements];
	[self.elseWhen render:arguments container:parent elements:elements];
	
	//[self.children addObject:self.when];
	//[self.children addObject:self.elseWhen];
	
	[self setCondition:self.conditionBindableObject.boolValue];
	return self;
}

@end
