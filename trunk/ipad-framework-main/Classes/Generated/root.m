

#import "root.h"
#import "mobl_ipadstyle_buttonStyle.h"
#import "iButton.h"
#import "root_ctr5359.h"
#import "root_ctr2521.h"
#import "root_ctr4383.h"
#import "root_ctr1535.h"
#import "root_ctr4383.h"
#import "root_ctr3477.h"
#import "root_ctr1535.h"
#import "root.h"
#import "root_callback_tmp169.h"

@implementation root
@synthesize window;
-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container:parent elements: elements];
	[self.scope createInnerScope];
	int f_4798 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred17 = [[BindableObject alloc] initWithValue: [[root_ctr1535 alloc] init]];
	[self.scope set:@"c" variable:VarDeclInferred17];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments88 = [[NSMutableArray alloc] init];
	
	
	root_ctr3477* root_ctr3477_root_ctr34770 = [[root_ctr3477 alloc] init];
	[root_ctr3477_root_ctr34770 render:arguments88 container: [containerStack top] elements:NULL];
	[root_ctr3477_root_ctr34770 finilize];
	[[containerStack top] addBodyControl:root_ctr3477_root_ctr34770];
	[self.scope exitScope];
	BindableObject* VarDeclInferred18 = [[BindableObject alloc] initWithValue: [[root_ctr4383 alloc] init]];
	[self.scope set:@"c2" variable:VarDeclInferred18];
	BindableObject* VarDeclInferred19 = [[BindableObject alloc] initWithBool: YES];
	[self.scope set:@"done" variable:VarDeclInferred19];
	BindableObject* DeriveDecl74 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp169 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp169" variable:DeriveDecl74];
	BindableObject* DeriveDecl75 = [[BindableObject alloc] initWithValue: @"Change"];
	[self.scope set:@"tmp168" variable:DeriveDecl75];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments89 = [[NSMutableArray alloc] init];
	
	[arguments89 addObject:(BindableObject*)[self.scope get: @"tmp168"]];
	[arguments89 addObject:(BindableObject*)[self.scope get: @"tmp169"]];
	[arguments89 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
	
	iButton* iButton_iButton6 = [[iButton alloc] init];
	[iButton_iButton6 render:arguments89 container: [containerStack top] elements:NULL];
	[iButton_iButton6 finilize];
	[[containerStack top] addBodyControl:iButton_iButton6];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments90 = [[NSMutableArray alloc] init];
	
	
	
	[[(BindableObject*)[self.scope get: @"c2"] value] render:arguments90 container: [containerStack top] elements:NULL];
	[[(BindableObject*)[self.scope get: @"c2"] value] finilize];
	[[containerStack top] addBodyControl:[(BindableObject*)[self.scope get: @"c2"] value]];
	[self.scope exitScope];
	 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
