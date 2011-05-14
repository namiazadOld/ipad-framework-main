//
//  iLeftButton.m
//  iPadFramework
//
//  Created by Nami on 2/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iLeftButton.h"
#import "iHeader.h"
#import "Utilities.h"
#import "Constants.h"


@implementation iLeftButton

-(void) parentChanged: (iBaseControl*)parent
{
	if ([parent isKindOfClass:[iHeader class]])
	{
		iHeader* header = (iHeader*)parent;
		header.leftButton = self.button;
		return;
	}
	
	//leftButton can only be added to header and footer
	[Utilities ShowError:self title:MSG_WRONG_SCREEN_STRUCTURE content:@"Left Button can only be added to header and footer"];
	
}

@end
