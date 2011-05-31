

#import "TabSample_tupleScreen.h"
#import "mobl_ipadstyle_buttonStyle.h"
#import "iButton.h"
#import "TabSample_textBoxStyleNextLine.h"
#import "iNumField.h"
#import "iTextBox.h"
#import "TabSample.h"
#import "mobl_ipadstyle_textBoxStyle.h"
#import "TabSample_tupleScreen.h"
#import "TabSample_tupleScreen_callback_tmp23.h"

@implementation TabSample_tupleScreen

-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int b_3503 = -1;
	
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred5 = [[BindableObject alloc] initWithValue: @"Sample String"];
	[self.scope set:@"str" variable:VarDeclInferred5];
	BindableObject* VarDeclInferred6 = [[BindableObject alloc] initWithValue: [[NSMutableArray alloc] initWithObjects:(BindableObject*)[self.scope get: @"str"],[[BindableObject alloc] initWithValue:@"Hello"], nil]];
	[self.scope set:@"array" variable:VarDeclInferred6];
	BindableObject* VarDeclInferred7 = [[BindableObject alloc] initWithValue: [Utilities Tuple:[[NSArray alloc] initWithObjects:[[TypedValue alloc] initWithType:@"Ref" value:(BindableObject*)[self.scope get: @"str"]],[[TypedValue alloc] initWithType:@"Num" value:[[NSNumber alloc] initWithFloat:4]], nil]]];
	[self.scope set:@"tuple" variable:VarDeclInferred7];
	BindableObject* DeriveDecl16 = [[BindableObject alloc] initWithValue: [TabSample GetString ]];
	[self.scope set:@"tmp16" variable:DeriveDecl16];
	BindableObject* DeriveDecl17 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"tmp17" variable:DeriveDecl17];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox7 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox70 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox70 addObject:(BindableObject*)[self.scope get: @"tmp16"]];
	[arguments_iTextBox_iTextBox70 addObject:(BindableObject*)[self.scope get: @"tmp17"]];
	[arguments_iTextBox_iTextBox70 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_textBoxStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox7 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox70 container: [containerStack top]];
	//push iTextBox_iTextBox7 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox7];
	
	//pop iTextBox_iTextBox7
	[containerStack pop];
	[iTextBox_iTextBox7 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox7];
	[self.scope exitScope];
	BindableObject* DeriveDecl18 = [[BindableObject alloc] initWithValue: @"Smith"];
	[self.scope set:@"tmp18" variable:DeriveDecl18];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox8 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox80 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox80 addObject:[[(BindableObject*)[self.scope get: @"tuple"] value] _1]];
	[arguments_iTextBox_iTextBox80 addObject:(BindableObject*)[self.scope get: @"tmp18"]];
	[arguments_iTextBox_iTextBox80 addObject:[[BindableObject alloc] initWithValue: [[TabSample_textBoxStyleNextLine alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox8 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox80 container: [containerStack top]];
	//push iTextBox_iTextBox8 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox8];
	
	//pop iTextBox_iTextBox8
	[containerStack pop];
	[iTextBox_iTextBox8 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox8];
	[self.scope exitScope];
	BindableObject* VarDeclInferred8 = [[BindableObject alloc] initWithValue: [TabSample GetTuple ]];
	[self.scope set:@"tuple2" variable:VarDeclInferred8];
	BindableObject* DeriveDecl19 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"tmp19" variable:DeriveDecl19];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox9 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox90 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox90 addObject:[[(BindableObject*)[self.scope get: @"tuple2"] value] _1]];
	[arguments_iTextBox_iTextBox90 addObject:(BindableObject*)[self.scope get: @"tmp19"]];
	[arguments_iTextBox_iTextBox90 addObject:[[BindableObject alloc] initWithValue: [[TabSample_textBoxStyleNextLine alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox9 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox90 container: [containerStack top]];
	//push iTextBox_iTextBox9 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox9];
	
	//pop iTextBox_iTextBox9
	[containerStack pop];
	[iTextBox_iTextBox9 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox9];
	[self.scope exitScope];
	BindableObject* VarDeclInferred9 = [[BindableObject alloc] initWithNumber: 4];
	[self.scope set:@"x" variable:VarDeclInferred9];
	BindableObject* VarDeclInferred10 = [[BindableObject alloc] initWithNumber: [(BindableObject*)[self.scope get: @"x"] numValue] * 5];
	[self.scope set:@"y" variable:VarDeclInferred10];
	BindableObject* DeriveDecl20 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"tmp21" variable:DeriveDecl20];
	
	[self.scope createInnerScope];
	//changing iNumField_iNumField2 arguments to an array
	
	NSMutableArray* arguments_iNumField_iNumField20 = [[NSMutableArray alloc] init];
	
	[arguments_iNumField_iNumField20 addObject:(BindableObject*)[self.scope get: @"y"]];
	[arguments_iNumField_iNumField20 addObject:(BindableObject*)[self.scope get: @"tmp21"]];
	[arguments_iNumField_iNumField20 addObject:[[BindableObject alloc] initWithValue: [[TabSample_textBoxStyleNextLine alloc] initialize]]];
	
	//initializing [varName] control
	iNumField* iNumField_iNumField2 = [[iNumField alloc] initialize:arguments_iNumField_iNumField20 container: [containerStack top]];
	//push iNumField_iNumField2 to stack to add innert controls
	[containerStack push:iNumField_iNumField2];
	
	//pop iNumField_iNumField2
	[containerStack pop];
	[iNumField_iNumField2 finilize];
	[[containerStack top] addBodyControl:iNumField_iNumField2];
	[self.scope exitScope];
	BindableObject* DeriveDecl21 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[TabSample_tupleScreen_callback_tmp23 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp23" variable:DeriveDecl21];
	BindableObject* DeriveDecl22 = [[BindableObject alloc] initWithValue: @"Change tuple item"];
	[self.scope set:@"tmp22" variable:DeriveDecl22];
	
	[self.scope createInnerScope];
	//changing iButton_iButton1 arguments to an array
	
	NSMutableArray* arguments_iButton_iButton10 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_iButton10 addObject:(BindableObject*)[self.scope get: @"tmp22"]];
	[arguments_iButton_iButton10 addObject:(BindableObject*)[self.scope get: @"tmp23"]];
	[arguments_iButton_iButton10 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
	
	//initializing [varName] control
	iButton* iButton_iButton1 = [[iButton alloc] initialize:arguments_iButton_iButton10 container: [containerStack top]];
	//push iButton_iButton1 to stack to add innert controls
	[containerStack push:iButton_iButton1];
	
	//pop iButton_iButton1
	[containerStack pop];
	[iButton_iButton1 finilize];
	[[containerStack top] addBodyControl:iButton_iButton1];
	[self.scope exitScope];
	 
	//pop screen 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
