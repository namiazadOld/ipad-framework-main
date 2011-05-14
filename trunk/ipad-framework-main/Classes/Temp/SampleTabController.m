//
//  SampleTabController.m
//  iPadFramework
//
//  Created by Nami on 5/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SampleTabController.h"


@implementation SampleTabController
@synthesize viewController;

-(void) initialize
{
	self.viewController = [[UIViewController alloc] init];

	UIViewController* tabPage1 = [[UIViewController alloc] init];
	tabPage1.title = @"Tab1";
	UITextField* t = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 500, 300)];
	t.borderStyle = UITextBorderStyleRoundedRect;
	[tabPage1.view addSubview:t];
	
	UIViewController* tabPage2 = [[UIViewController alloc] init];
	UITextField* t2 = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 500, 300)];
	t2.borderStyle = UITextBorderStyleRoundedRect;
	[tabPage2.view addSubview:t2];
	
	
	UITabBarController* tab = [[UITabBarController alloc] init];
	tab.view.frame = CGRectMake(100, 100, 400, 400);
	tab.title = @"MyTabController";
	

	NSArray* tabPages = [[NSArray alloc] initWithObjects:tabPage1, tabPage2, nil];
	[tab setViewControllers:tabPages];
	
	
	
	[self.viewController.view addSubview:tab.view];
}

@end
