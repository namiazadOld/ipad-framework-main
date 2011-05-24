

#import "root.h"
#import "mobl_ipadstyle_buttonStyle.h"
#import "iButton.h"
#import "HumanResource_textBoxNextLineStyle.h"
#import "iTextBox.h"
#import "iNumField.h"
#import "HumanResource_Person.h"
#import "root.h"
#import "root_callback_tmp38.h"

@implementation root
@synthesize window;
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int h_5588 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred1 = [[BindableObject alloc] initWithNumber: 45];
	[self.scope set:@"age" variable:VarDeclInferred1];
	BindableObject* VarDeclInferred2 = [[BindableObject alloc] initWithNumber: 2011 - [(BindableObject*)[self.scope get: @"age"] numValue]];
	[self.scope set:@"birthYear" variable:VarDeclInferred2];
	BindableObject* VarDeclInferred3 = [[BindableObject alloc] initWithValue: [[HumanResource_Person alloc] initWithValues:[[NSArray alloc] initWithObjects:[[NameValue alloc] initWithName:@"FirstName" value:@"Nami"],[[NameValue alloc] initWithName:@"LastName" value:@"Nasserazad"],[[NameValue alloc] initWithName:@"Age" value:[[NSNumber alloc] initWithFloat:28]], nil]]];
	[self.scope set:@"p" variable:VarDeclInferred3];
	BindableObject* DeriveDecl4 = [[BindableObject alloc] initWithValue: @"BirthYear"];
	[self.scope set:@"tmp35" variable:DeriveDecl4];
	BindableObject* DeriveDecl5 = [[BindableObject alloc] initWithNumber: [(BindableObject*)[self.scope get: @"birthYear"] numValue] * 5];
	[self.scope set:@"tmp34" variable:DeriveDecl5];
	
	[self.scope createInnerScope];
	//changing iNumField_iNumField1 arguments to an array
	
	NSMutableArray* arguments_iNumField_iNumField10 = [[NSMutableArray alloc] init];
	
	[arguments_iNumField_iNumField10 addObject:(BindableObject*)[self.scope get: @"tmp34"]];
	[arguments_iNumField_iNumField10 addObject:(BindableObject*)[self.scope get: @"tmp35"]];
	[arguments_iNumField_iNumField10 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iNumField* iNumField_iNumField1 = [[iNumField alloc] initialize:arguments_iNumField_iNumField10 container: [containerStack top]];
	//push iNumField_iNumField1 to stack to add innert controls
	[containerStack push:iNumField_iNumField1];
	
	//pop iNumField_iNumField1
	[containerStack pop];
	[iNumField_iNumField1 finilize];
	[[containerStack top] addBodyControl:iNumField_iNumField1];
	[self.scope exitScope];
	BindableObject* DeriveDecl6 = [[BindableObject alloc] initWithValue: @"First Name"];
	[self.scope set:@"tmp36" variable:DeriveDecl6];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox1 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox10 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox10 addObject:[[(BindableObject*)[self.scope get: @"p"] value] FirstName]];
	[arguments_iTextBox_iTextBox10 addObject:(BindableObject*)[self.scope get: @"tmp36"]];
	[arguments_iTextBox_iTextBox10 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox1 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox10 container: [containerStack top]];
	//push iTextBox_iTextBox1 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox1];
	
	//pop iTextBox_iTextBox1
	[containerStack pop];
	[iTextBox_iTextBox1 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox1];
	[self.scope exitScope];
	BindableObject* DeriveDecl7 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp38 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp38" variable:DeriveDecl7];
	BindableObject* DeriveDecl8 = [[BindableObject alloc] initWithValue: @"Button"];
	[self.scope set:@"tmp37" variable:DeriveDecl8];
	
	[self.scope createInnerScope];
	//changing iButton_iButton0 arguments to an array
	
	NSMutableArray* arguments_iButton_iButton00 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_iButton00 addObject:(BindableObject*)[self.scope get: @"tmp37"]];
	[arguments_iButton_iButton00 addObject:(BindableObject*)[self.scope get: @"tmp38"]];
	[arguments_iButton_iButton00 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
	
	//initializing [varName] control
	iButton* iButton_iButton0 = [[iButton alloc] initialize:arguments_iButton_iButton00 container: [containerStack top]];
	//push iButton_iButton0 to stack to add innert controls
	[containerStack push:iButton_iButton0];
	
	//pop iButton_iButton0
	[containerStack pop];
	[iButton_iButton0 finilize];
	[[containerStack top] addBodyControl:iButton_iButton0];
	[self.scope exitScope];
	 
	//pop screen 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
