

#import "root.h"
#import "mobl_ipadstyle_tabSetStyle.h"
#import "iTabSet.h"
#import "root_DetailInfo13.h"
#import "root_GeneralInfo13.h"
#import "TabSample_textBoxStyleNextLine.h"
#import "iNumField.h"
#import "iTextBox.h"
#import "TabSample_Person.h"
#import "root.h"

@implementation root
@synthesize window;
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int k_25739 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred1 = [[BindableObject alloc] initWithValue: [[TabSample_Person alloc] initWithValues:[[NSArray alloc] initWithObjects:[[NameValue alloc] initWithName:@"FirstName" value:@"Nami"],[[NameValue alloc] initWithName:@"LastName" value:@"Nasserazad"],[[NameValue alloc] initWithName:@"Age" value:[[NSNumber alloc] initWithFloat:28]], nil]]];
	[self.scope set:@"p" variable:VarDeclInferred1];
	BindableObject* DeriveDecl7 = [[BindableObject alloc] initWithValue: [[NSMutableArray alloc] initWithObjects:[[BindableObject alloc] initWithValue:[Utilities Tuple:[[NSArray alloc] initWithObjects:[[TypedValue alloc] initWithType:@"Ref" value:@"GeneralInfo"],[[TypedValue alloc] initWithType:@"Ref" value:@""],[[TypedValue alloc] initWithType:@"Ref" value:[[root_GeneralInfo13 alloc] init]], nil]]],[[BindableObject alloc] initWithValue:[Utilities Tuple:[[NSArray alloc] initWithObjects:[[TypedValue alloc] initWithType:@"Ref" value:@"DetailInfo"],[[TypedValue alloc] initWithType:@"Ref" value:@""],[[TypedValue alloc] initWithType:@"Ref" value:[[root_DetailInfo13 alloc] init]], nil]]], nil]];
	[self.scope set:@"tmp16" variable:DeriveDecl7];
	
	[self.scope createInnerScope];
	//changing iTabSet_iTabSet0 arguments to an array
	
	NSMutableArray* arguments_iTabSet_iTabSet00 = [[NSMutableArray alloc] init];
	
	[arguments_iTabSet_iTabSet00 addObject:(BindableObject*)[self.scope get: @"tmp16"]];
	[arguments_iTabSet_iTabSet00 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_tabSetStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTabSet* iTabSet_iTabSet0 = [[iTabSet alloc] initialize:arguments_iTabSet_iTabSet00 container: [containerStack top]];
	//push iTabSet_iTabSet0 to stack to add innert controls
	[containerStack push:iTabSet_iTabSet0];
	
	//pop iTabSet_iTabSet0
	[containerStack pop];
	[iTabSet_iTabSet0 finilize];
	[[containerStack top] addBodyControl:iTabSet_iTabSet0];
	[self.scope exitScope];
	 
	//pop screen 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
