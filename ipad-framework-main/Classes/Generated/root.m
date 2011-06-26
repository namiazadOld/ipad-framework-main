

#import "root.h"
#import "root_detail593.h"
#import "root_master493.h"
#import "iSplitView.h"
#import "ControlVariable_detail1.h"
#import "root.h"

@implementation root
@synthesize window;
-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container:parent elements: elements];
	[self.scope createInnerScope];
	int u_21337 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred27 = [[BindableObject alloc] initWithValue: [[ControlVariable_detail1 alloc] init]];
	[self.scope set:@"detailVar" variable:VarDeclInferred27];
	BindableObject* DeriveDecl226 = [[BindableObject alloc] initWithValue: @"Setting"];
	[self.scope set:@"tmp903" variable:DeriveDecl226];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments209 = [[NSMutableArray alloc] init];
	
	[arguments209 addObject:[[BindableObject alloc] initWithValue: [[root_master493 alloc] init]]];
	[arguments209 addObject:[[BindableObject alloc] initWithValue: [[root_detail593 alloc] init]]];
	[arguments209 addObject:(BindableObject*)[self.scope get: @"tmp903"]];
	
	iSplitView* iSplitView_iSplitView4 = [[iSplitView alloc] init];
	[iSplitView_iSplitView4 render:arguments209 container: [containerStack top] elements:NULL];
	[iSplitView_iSplitView4 finilize];
	[[containerStack top] addBodyControl:iSplitView_iSplitView4];
	[self.scope exitScope];
	 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	
	return self;
}
@end
