//
//  iItem.m
//  iPadFramework
//
//  Created by Nami on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iItem.h"
#import "NullObject.h"
#import "iSection.h"
#import "iTable.h"
#import "Utilities.h"
#import "iEmptyWidget.h"


@implementation iItem

@synthesize title, cell, titleBindableObject;

-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	self.cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"] autorelease];
	[super render:arguments container: parent elements: elements];
	[self renderElements:self];
	return self;
}

-(void) changeNotification:(BindableObject*) bo
{
	if (!self.locked)
	{
		self.locked = YES;
		self.title = (NSString*)bo.value;
		[self.parentWidget childUpdated:self];
		self.locked = NO;
	}
}

-(void) manageArgument: (BindableObject*)bo at:(int)index
{
	[super manageArgument:bo at:index];
	switch (index) {
		case 0:
			titleBindableObject = bo;
			self.title = (NSString*)bo.value;
			break;
		case 1:
			[self setControlStyle:(UIStyle*)bo.value];
			break;
		default:
			break;
	}
}


//This method is called by addBodyControl method of parent to provide good level of extensibility
-(void) parentChanged: (iBaseControl*)parent
{
	if ([parent isKindOfClass:[iSection class]])
	{
		iSection* section = (iSection*)parent;
		[section.itemList addObject:self];
		return;
	}
	
	if ([parent isKindOfClass:[iTable class]])
	{
		iSection* section;
		iTable* table = (iTable*)parent;
		if ([table.sectionList count] == 0)
		{
			section = [[iSection alloc] initialize:[[NSMutableArray alloc] init] container: table];
			[table.sectionList addObject:section];
		}
		
		section = [table.sectionList objectAtIndex:0];
		[section.itemList addObject:self];
		return;
	}
}

-(void) addBodyControl:(iBaseControl*) widget
{
	[Utilities AddControl:widget ToContainer:self];
}

-(CGRect) getFrame
{
	return self.cell.contentView.frame;
}

-(UIView*) getView
{
	return self.cell;
}

-(UIView*) getChildrenHolder
{
	return self.cell.contentView;
}

@end
