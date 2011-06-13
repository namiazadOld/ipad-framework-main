

#import "root.h"
#import "mobl_ipadstyle_buttonStyle.h"
#import "iButton.h"
#import "ControlVariable_nextlineTextBoxStyle.h"
#import "iNumField.h"
#import "ControlVariable_T.h"
#import "root.h"
#import "root_callback_tmp668.h"
#import "root_tmp665_evaluator.h"

@implementation root
@synthesize window;
-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container:parent elements: elements];
	[self.scope createInnerScope];
	int p_53393 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred26 = [[BindableObject alloc] initWithValue: [[ControlVariable_T alloc] initWithValues:[[NSArray alloc] initWithObjects:[[NameValue alloc] initWithName:@"a" value:[[NSNumber alloc] initWithFloat:12]], nil]]];
	[self.scope set:@"t" variable:VarDeclInferred26];
	
	root_tmp665_evaluator* DeriveDecl1420 = [[root_tmp665_evaluator alloc] initWithScope:self.scope];
	BindableObject* DeriveDecl142 = [[BindableObject alloc] initWithNumber: [DeriveDecl1420 evaluateNum]];
	[self.scope set:@"tmp665" variable:DeriveDecl142];
	DeriveDecl142.evaluator = DeriveDecl1420;
	[[[(BindableObject*)[self.scope get: @"t"] value] a] addListener:DeriveDecl142];
	BindableObject* DeriveDecl143 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"tmp666" variable:DeriveDecl143];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments_iNumField_iNumField90 = [[NSMutableArray alloc] init];
	
	[arguments_iNumField_iNumField90 addObject:(BindableObject*)[self.scope get: @"tmp665"]];
	[arguments_iNumField_iNumField90 addObject:(BindableObject*)[self.scope get: @"tmp666"]];
	[arguments_iNumField_iNumField90 addObject:[[BindableObject alloc] initWithValue: [[ControlVariable_nextlineTextBoxStyle alloc] initialize]]];
	
	iNumField* iNumField_iNumField9 = [[iNumField alloc] init];
	[iNumField_iNumField9 render:arguments_iNumField_iNumField90 container: [containerStack top] elements:NULL];
	[iNumField_iNumField9 finilize];
	[[containerStack top] addBodyControl:iNumField_iNumField9];
	[self.scope exitScope];
	BindableObject* DeriveDecl144 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp668 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp668" variable:DeriveDecl144];
	BindableObject* DeriveDecl145 = [[BindableObject alloc] initWithValue: @"Change"];
	[self.scope set:@"tmp667" variable:DeriveDecl145];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments_iButton_iButton90 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_iButton90 addObject:(BindableObject*)[self.scope get: @"tmp667"]];
	[arguments_iButton_iButton90 addObject:(BindableObject*)[self.scope get: @"tmp668"]];
	[arguments_iButton_iButton90 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
	
	iButton* iButton_iButton9 = [[iButton alloc] init];
	[iButton_iButton9 render:arguments_iButton_iButton90 container: [containerStack top] elements:NULL];
	[iButton_iButton9 finilize];
	[[containerStack top] addBodyControl:iButton_iButton9];
	[self.scope exitScope];
	 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
