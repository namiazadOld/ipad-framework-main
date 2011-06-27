

#import "root.h"
#import "mobl_ipadstyle_splitViewStyle.h"
#import "root_detail49.h"
#import "root_master31.h"
#import "iSplitView.h"
#import "root_detail132.h"
#import "root.h"

@implementation root
@synthesize window;
-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container:parent elements: elements];
	
	[window addSubview:[navController view]];
	
	[self.scope createInnerScope];
	int o_5057 = -1;
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred8 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"language" variable:VarDeclInferred8];
	BindableObject* VarDeclInferred9 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"keyboardType" variable:VarDeclInferred9];
	BindableObject* VarDeclInferred10 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"mouseType" variable:VarDeclInferred10];
	BindableObject* VarDeclInferred11 = [[BindableObject alloc] initWithValue: [[root_detail132 alloc] init]];
	[self.scope set:@"detailVar" variable:VarDeclInferred11];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments86 = [[NSMutableArray alloc] init];
	
	[arguments86 addObject:[[BindableObject alloc] initWithValue: [[root_master31 alloc] init]]];
	[arguments86 addObject:[[BindableObject alloc] initWithValue: [[root_detail49 alloc] init]]];
	[arguments86 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_splitViewStyle alloc] initialize]]];
	
	iSplitView* iSplitView_iSplitView1 = [[iSplitView alloc] init];
	[iSplitView_iSplitView1 render:arguments86 container: [containerStack top] elements:NULL];
	[iSplitView_iSplitView1 finilize];
	[[containerStack top] addBodyControl:iSplitView_iSplitView1];
	[self.scope exitScope];
	 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
