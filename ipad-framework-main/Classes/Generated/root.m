

#import "root.h"
#import "mobl_ipadstyle_buttonStyle.h"
#import "iButton.h"
#import "ControlVariable_ctr6.h"
#import "ControlVariable_ctr4.h"
#import "ControlVariable_ctr6.h"
#import "ControlVariable_ctr5.h"
#import "root.h"
#import "root_c5_ControlCall8.h"
#import "root_callback_tmp140.h"

@implementation root
@synthesize window;
-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container:parent elements: elements];
	[self.scope createInnerScope];
	int r_3596 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred18 = [[BindableObject alloc] initWithValue: [[ControlVariable_ctr5 alloc] init]];
	[self.scope set:@"c5" variable:VarDeclInferred18];
	BindableObject* VarDeclInferred19 = [[BindableObject alloc] initWithValue: [[ControlVariable_ctr6 alloc] init]];
	[self.scope set:@"c6" variable:VarDeclInferred19];
	BindableObject* VarDeclInferred20 = [[BindableObject alloc] initWithBool: YES];
	[self.scope set:@"done" variable:VarDeclInferred20];
	BindableObject* DeriveDecl67 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp140 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp140" variable:DeriveDecl67];
	BindableObject* DeriveDecl68 = [[BindableObject alloc] initWithValue: @"Change"];
	[self.scope set:@"tmp139" variable:DeriveDecl68];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments76 = [[NSMutableArray alloc] init];
	
	[arguments76 addObject:(BindableObject*)[self.scope get: @"tmp139"]];
	[arguments76 addObject:(BindableObject*)[self.scope get: @"tmp140"]];
	[arguments76 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
	
	iButton* iButton_iButton11 = [[iButton alloc] init];
	[iButton_iButton11 render:arguments76 container: [containerStack top] elements:NULL];
	[iButton_iButton11 finilize];
	[[containerStack top] addBodyControl:iButton_iButton11];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments77 = [[NSMutableArray alloc] init];
	
	
	
	[[(BindableObject*)[self.scope get: @"c5"] value] render:arguments77 container: [containerStack top] elements:[[root_c5_ControlCall8 alloc] initWithElementOf:self.elementOf]];
	[[(BindableObject*)[self.scope get: @"c5"] value] finilize];
	[[containerStack top] addBodyControl:[(BindableObject*)[self.scope get: @"c5"] value]];
	[self.scope exitScope];
	 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
