

#import "root.h"
#import "mobl_ipadstyle_textBoxStyle.h"
#import "iTextBox.h"
#import "mobl_ipadstyle_labelStyle.h"
#import "iLabel.h"
#import "ControlVariable_generalInfo.h"
#import "root.h"
#import "rootControlCall21.h"

@implementation root
@synthesize window;
-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container:parent elements: elements];
	[self.scope createInnerScope];
	int f_19131 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred2 = [[BindableObject alloc] initWithValue: @"Smith"];
	[self.scope set:@"s" variable:VarDeclInferred2];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments_ControlVariable_generalInfo_ControlVariable_generalInfo30 = [[NSMutableArray alloc] init];
	
	
	ControlVariable_generalInfo* ControlVariable_generalInfo_ControlVariable_generalInfo3 = [[ControlVariable_generalInfo alloc] init];
	[ControlVariable_generalInfo_ControlVariable_generalInfo3 render:arguments_ControlVariable_generalInfo_ControlVariable_generalInfo30 container: [containerStack top] elements:[[rootControlCall21 alloc] initWithElementOf:self.elementOf]];
	[ControlVariable_generalInfo_ControlVariable_generalInfo3 finilize];
	[[containerStack top] addBodyControl:ControlVariable_generalInfo_ControlVariable_generalInfo3];
	[self.scope exitScope];
	BindableObject* DeriveDecl56 = [[BindableObject alloc] initWithValue: @"Confirm Last Name"];
	[self.scope set:@"tmp140" variable:DeriveDecl56];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments_iLabel_iLabel380 = [[NSMutableArray alloc] init];
	
	[arguments_iLabel_iLabel380 addObject:(BindableObject*)[self.scope get: @"tmp140"]];
	[arguments_iLabel_iLabel380 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_labelStyle alloc] initialize]]];
	
	iLabel* iLabel_iLabel38 = [[iLabel alloc] init];
	[iLabel_iLabel38 render:arguments_iLabel_iLabel380 container: [containerStack top] elements:NULL];
	[iLabel_iLabel38 finilize];
	[[containerStack top] addBodyControl:iLabel_iLabel38];
	[self.scope exitScope];
	BindableObject* DeriveDecl57 = [[BindableObject alloc] initWithValue: @"Smith"];
	[self.scope set:@"tmp141" variable:DeriveDecl57];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments_iTextBox_iTextBox90 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox90 addObject:(BindableObject*)[self.scope get: @"s"]];
	[arguments_iTextBox_iTextBox90 addObject:(BindableObject*)[self.scope get: @"tmp141"]];
	[arguments_iTextBox_iTextBox90 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_textBoxStyle alloc] initialize]]];
	
	iTextBox* iTextBox_iTextBox9 = [[iTextBox alloc] init];
	[iTextBox_iTextBox9 render:arguments_iTextBox_iTextBox90 container: [containerStack top] elements:NULL];
	[iTextBox_iTextBox9 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox9];
	[self.scope exitScope];
	 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
