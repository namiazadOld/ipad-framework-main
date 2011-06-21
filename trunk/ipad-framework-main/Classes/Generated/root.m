

#import "root.h"
#import "mobl_ipadstyle_buttonStyle.h"
#import "iButton.h"
#import "ControlVariable_ctr1.h"
#import "ControlVariable_ctr2.h"
#import "ControlVariable_ctr1.h"
#import "root.h"
#import "root_callback_tmp121.h"

@implementation root
@synthesize window;
-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container:parent elements: elements];
	[self.scope createInnerScope];
	int z_7265 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred18 = [[BindableObject alloc] initWithValue: [[ControlVariable_ctr1 alloc] init]];
	[self.scope set:@"c" variable:VarDeclInferred18];
	BindableObject* DeriveDecl53 = [[BindableObject alloc] initWithValue: @"I am String"];
	[self.scope set:@"tmp119" variable:DeriveDecl53];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments53 = [[NSMutableArray alloc] init];
	
	[arguments53 addObject:(BindableObject*)[self.scope get: @"tmp119"]];
	
	
	[[(BindableObject*)[self.scope get: @"c"] value] render:arguments53 container: [containerStack top] elements:NULL];
	[[(BindableObject*)[self.scope get: @"c"] value] finilize];
	[[containerStack top] addBodyControl:[(BindableObject*)[self.scope get: @"c"] value]];
	[self.scope exitScope];
	BindableObject* VarDeclInferred19 = [[BindableObject alloc] initWithBool: YES];
	[self.scope set:@"done" variable:VarDeclInferred19];
	BindableObject* DeriveDecl54 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp121 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp121" variable:DeriveDecl54];
	BindableObject* DeriveDecl55 = [[BindableObject alloc] initWithValue: @"Change"];
	[self.scope set:@"tmp120" variable:DeriveDecl55];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments54 = [[NSMutableArray alloc] init];
	
	[arguments54 addObject:(BindableObject*)[self.scope get: @"tmp120"]];
	[arguments54 addObject:(BindableObject*)[self.scope get: @"tmp121"]];
	[arguments54 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
	
	iButton* iButton_iButton10 = [[iButton alloc] init];
	[iButton_iButton10 render:arguments54 container: [containerStack top] elements:NULL];
	[iButton_iButton10 finilize];
	[[containerStack top] addBodyControl:iButton_iButton10];
	[self.scope exitScope];
	 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
