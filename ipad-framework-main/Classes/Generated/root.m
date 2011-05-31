

#import "root.h"
#import "mobl_ipadstyle_tabSetStyle.h"
#import "iTabSet.h"
#import "root_EntireInfo1.h"
#import "root_DetailInfo1.h"
#import "root_GeneralInfo1.h"
#import "TabSample_textBoxStyleNextLine.h"
#import "iNumField.h"
#import "iTextBox.h"
#import "TabSample_Person.h"
#import "mobl_ipadstyle_rightButtonStyle.h"
#import "iRightButton.h"
#import "mobl_ipadstyle_headerStyle.h"
#import "iHeader.h"
#import "root.h"
#import "root_callback_tmp25.h"

@implementation root
@synthesize window;
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int c_3503 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* DeriveDecl23 = [[BindableObject alloc] initWithValue: @"Profile"];
	[self.scope set:@"tmp26" variable:DeriveDecl23];
	
	[self.scope createInnerScope];
	//changing iHeader_iHeader1 arguments to an array
	
	NSMutableArray* arguments_iHeader_iHeader10 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_iHeader10 addObject:(BindableObject*)[self.scope get: @"tmp26"]];
	[arguments_iHeader_iHeader10 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_headerStyle alloc] initialize]]];
	
	//initializing [varName] control
	iHeader* iHeader_iHeader1 = [[iHeader alloc] initialize:arguments_iHeader_iHeader10 container: [containerStack top]];
	//push iHeader_iHeader1 to stack to add innert controls
	[containerStack push:iHeader_iHeader1];
	BindableObject* DeriveDecl24 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp25 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp25" variable:DeriveDecl24];
	BindableObject* DeriveDecl25 = [[BindableObject alloc] initWithValue: @"Go to tuple screen"];
	[self.scope set:@"tmp24" variable:DeriveDecl25];
	
	[self.scope createInnerScope];
	//changing iRightButton_iRightButton1 arguments to an array
	
	NSMutableArray* arguments_iRightButton_iRightButton10 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_iRightButton10 addObject:(BindableObject*)[self.scope get: @"tmp24"]];
	[arguments_iRightButton_iRightButton10 addObject:(BindableObject*)[self.scope get: @"tmp25"]];
	[arguments_iRightButton_iRightButton10 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_rightButtonStyle alloc] initialize]]];
	
	//initializing [varName] control
	iRightButton* iRightButton_iRightButton1 = [[iRightButton alloc] initialize:arguments_iRightButton_iRightButton10 container: [containerStack top]];
	//push iRightButton_iRightButton1 to stack to add innert controls
	[containerStack push:iRightButton_iRightButton1];
	
	//pop iRightButton_iRightButton1
	[containerStack pop];
	[iRightButton_iRightButton1 finilize];
	[[containerStack top] addBodyControl:iRightButton_iRightButton1];
	[self.scope exitScope];
	
	//pop iHeader_iHeader1
	[containerStack pop];
	[iHeader_iHeader1 finilize];
	[[containerStack top] addBodyControl:iHeader_iHeader1];
	[self.scope exitScope];
	BindableObject* VarDeclInferred11 = [[BindableObject alloc] initWithValue: [[TabSample_Person alloc] initWithValues:[[NSArray alloc] initWithObjects:[[NameValue alloc] initWithName:@"FirstName" value:@"Nami"],[[NameValue alloc] initWithName:@"LastName" value:@"Nasserazad"],[[NameValue alloc] initWithName:@"Age" value:[[NSNumber alloc] initWithFloat:28]], nil]]];
	[self.scope set:@"p" variable:VarDeclInferred11];
	BindableObject* DeriveDecl26 = [[BindableObject alloc] initWithValue: [[NSMutableArray alloc] initWithObjects:[[BindableObject alloc] initWithValue:[Utilities Tuple:[[NSArray alloc] initWithObjects:[[TypedValue alloc] initWithType:@"Ref" value:@"GeneralInfo"],[[TypedValue alloc] initWithType:@"Ref" value:@""],[[TypedValue alloc] initWithType:@"Ref" value:[[root_GeneralInfo1 alloc] init]], nil]]],[[BindableObject alloc] initWithValue:[Utilities Tuple:[[NSArray alloc] initWithObjects:[[TypedValue alloc] initWithType:@"Ref" value:@"DetailInfo"],[[TypedValue alloc] initWithType:@"Ref" value:@""],[[TypedValue alloc] initWithType:@"Ref" value:[[root_DetailInfo1 alloc] init]], nil]]],[[BindableObject alloc] initWithValue:[Utilities Tuple:[[NSArray alloc] initWithObjects:[[TypedValue alloc] initWithType:@"Ref" value:@"EntireInfo"],[[TypedValue alloc] initWithType:@"Ref" value:@""],[[TypedValue alloc] initWithType:@"Ref" value:[[root_EntireInfo1 alloc] init]], nil]]], nil]];
	[self.scope set:@"tmp74" variable:DeriveDecl26];
	
	[self.scope createInnerScope];
	//changing iTabSet_iTabSet1 arguments to an array
	
	NSMutableArray* arguments_iTabSet_iTabSet10 = [[NSMutableArray alloc] init];
	
	[arguments_iTabSet_iTabSet10 addObject:(BindableObject*)[self.scope get: @"tmp74"]];
	[arguments_iTabSet_iTabSet10 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_tabSetStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTabSet* iTabSet_iTabSet1 = [[iTabSet alloc] initialize:arguments_iTabSet_iTabSet10 container: [containerStack top]];
	//push iTabSet_iTabSet1 to stack to add innert controls
	[containerStack push:iTabSet_iTabSet1];
	
	//pop iTabSet_iTabSet1
	[containerStack pop];
	[iTabSet_iTabSet1 finilize];
	[[containerStack top] addBodyControl:iTabSet_iTabSet1];
	[self.scope exitScope];
	 
	//pop screen 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
