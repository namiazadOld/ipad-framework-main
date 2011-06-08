

#import "root.h"
#import "mobl_ipadstyle_tabSetStyle.h"
#import "iTabSet.h"
#import "root_tab249.h"
#import "root_tab179.h"
#import "mobl_ipadstyle_labelStyle.h"
#import "iLabel.h"
#import "root.h"

@implementation root
@synthesize window;
-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container:parent elements: elements];
	[self.scope createInnerScope];
	int a_14183 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* DeriveDecl104 = [[BindableObject alloc] initWithValue: [[NSMutableArray alloc] initWithObjects:[[BindableObject alloc] initWithValue:[Utilities Tuple:[[NSArray alloc] initWithObjects:[[TypedValue alloc] initWithType:@"Ref" value:@"Tab1"],[[TypedValue alloc] initWithType:@"Ref" value:@""],[[TypedValue alloc] initWithType:@"Ref" value:[[root_tab179 alloc] init]], nil]]],[[BindableObject alloc] initWithValue:[Utilities Tuple:[[NSArray alloc] initWithObjects:[[TypedValue alloc] initWithType:@"Ref" value:@"Tab2"],[[TypedValue alloc] initWithType:@"Ref" value:@""],[[TypedValue alloc] initWithType:@"Ref" value:[[root_tab249 alloc] init]], nil]]], nil]];
	[self.scope set:@"tmp326" variable:DeriveDecl104];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments_iTabSet_iTabSet00 = [[NSMutableArray alloc] init];
	
	[arguments_iTabSet_iTabSet00 addObject:(BindableObject*)[self.scope get: @"tmp326"]];
	[arguments_iTabSet_iTabSet00 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_tabSetStyle alloc] initialize]]];
	
	iTabSet* iTabSet_iTabSet0 = [[iTabSet alloc] init];
	[iTabSet_iTabSet0 render:arguments_iTabSet_iTabSet00 container: [containerStack top] elements:NULL];
	[iTabSet_iTabSet0 finilize];
	[[containerStack top] addBodyControl:iTabSet_iTabSet0];
	[self.scope exitScope];
	 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
