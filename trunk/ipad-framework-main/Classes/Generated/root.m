

#import "root.h"
#import "mobl_ipadstyle_labelStyle.h"
#import "iLabel.h"
#import "mobl_ipadstyle_itemStyle.h"
#import "iItem.h"
#import "mobl_ipadstyle_sectionStyle.h"
#import "iSection.h"
#import "mobl_ipadstyle_itemStyle.h"
#import "iItem.h"
#import "mobl_ipadstyle_sectionStyle.h"
#import "iSection.h"
#import "mobl_ipadstyle_tableStyle.h"
#import "iTable.h"
#import "mobl_ipadstyle_buttonStyle.h"
#import "iButton.h"
#import "mobl_ipadstyle_textBoxStyle.h"
#import "iTextBox.h"
#import "mobl_ipadstyle_switchStyle.h"
#import "iSwitch.h"
#import "mobl_ipadstyle_buttonStyle.h"
#import "iButton.h"
#import "ControlVariable_nextlineTextBoxStyle.h"
#import "iTextBox.h"
#import "root.h"
#import "root_when_When22_else.h"
#import "root_when_When22.h"
#import "root_callback_tmp363.h"

@implementation root
@synthesize window;
-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container:parent elements: elements];
	[self.scope createInnerScope];
	int d_11724 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* DeriveDecl88 = [[BindableObject alloc] initWithValue: @"Stable1"];
	[self.scope set:@"tmp360" variable:DeriveDecl88];
	BindableObject* DeriveDecl89 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"tmp361" variable:DeriveDecl89];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments_iTextBox_iTextBox130 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox130 addObject:(BindableObject*)[self.scope get: @"tmp360"]];
	[arguments_iTextBox_iTextBox130 addObject:(BindableObject*)[self.scope get: @"tmp361"]];
	[arguments_iTextBox_iTextBox130 addObject:[[BindableObject alloc] initWithValue: [[ControlVariable_nextlineTextBoxStyle alloc] initialize]]];
	
	iTextBox* iTextBox_iTextBox13 = [[iTextBox alloc] init];
	[iTextBox_iTextBox13 render:arguments_iTextBox_iTextBox130 container: [containerStack top] elements:NULL];
	[iTextBox_iTextBox13 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox13];
	[self.scope exitScope];
	BindableObject* VarDeclInferred12 = [[BindableObject alloc] initWithBool: YES];
	[self.scope set:@"done" variable:VarDeclInferred12];
	BindableObject* DeriveDecl90 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp363 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp363" variable:DeriveDecl90];
	BindableObject* DeriveDecl91 = [[BindableObject alloc] initWithValue: @"Apply"];
	[self.scope set:@"tmp362" variable:DeriveDecl91];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments_iButton_iButton120 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_iButton120 addObject:(BindableObject*)[self.scope get: @"tmp362"]];
	[arguments_iButton_iButton120 addObject:(BindableObject*)[self.scope get: @"tmp363"]];
	[arguments_iButton_iButton120 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
	
	iButton* iButton_iButton12 = [[iButton alloc] init];
	[iButton_iButton12 render:arguments_iButton_iButton120 container: [containerStack top] elements:NULL];
	[iButton_iButton12 finilize];
	[[containerStack top] addBodyControl:iButton_iButton12];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments_When25 = [[NSMutableArray alloc] init];
	
	[arguments_When25 addObject:(BindableObject*)[self.scope get: @"done"]];
	
	iWhen* arguments_When250 = [[iWhen alloc] init];
	arguments_When250.parentWidget = self;
	//[self.children addObject:arguments_When250];
	arguments_When250.when = [[root_when_When22 alloc] init];
	arguments_When250.elseWhen = [[root_when_When22_else alloc] init];
	[arguments_When250 render:arguments_When25 container: [containerStack top] elements:NULL];
	[self.scope exitScope];
	 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
