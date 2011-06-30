

#import "root.h"
#import "mobl_ipadstyle_splitViewStyle.h"
#import "root_detail1873.h"
#import "root_master1373.h"
#import "iSplitView.h"
#import "root_detail1872.h"
#import "root.h"

@implementation root
@synthesize window;
-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container:parent elements: elements];
	
	[window addSubview:[navController view]];
	
	[self.scope createInnerScope];
	int w_3606 = -1;
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred103 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"language" variable:VarDeclInferred103];
	BindableObject* VarDeclInferred104 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"keyboardType" variable:VarDeclInferred104];
	BindableObject* VarDeclInferred105 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"mouseType" variable:VarDeclInferred105];
	BindableObject* VarDeclInferred106 = [[BindableObject alloc] initWithValue: [[root_detail1872 alloc] init]];
	[self.scope set:@"detailVar" variable:VarDeclInferred106];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments703 = [[NSMutableArray alloc] init];
	
	[arguments703 addObject:[[BindableObject alloc] initWithValue: [[root_master1373 alloc] init]]];
	[arguments703 addObject:[[BindableObject alloc] initWithValue: [[root_detail1873 alloc] init]]];
	[arguments703 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_splitViewStyle alloc] initialize]]];
	
	iSplitView* iSplitView_iSplitView54 = [[iSplitView alloc] init];
	[iSplitView_iSplitView54 render:arguments703 container: [containerStack top] elements:NULL];
	[iSplitView_iSplitView54 finilize];
	[[containerStack top] addBodyControl:iSplitView_iSplitView54];
	[self.scope exitScope];
	 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
