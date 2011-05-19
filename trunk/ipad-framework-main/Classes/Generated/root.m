

#import "root.h"
#import "mobl_ipadstyle_itemStyle.h"
#import "iItem.h"
#import "HumanResource_iItemCheck.h"
#import "mobl_ipadstyle_sectionStyle.h"
#import "iSection.h"
#import "HumanResource_iItemNum.h"
#import "HumanResource_iItemEdit.h"
#import "mobl_ipadstyle_tableStyle.h"
#import "iTable.h"
#import "mobl_ipadstyle_buttonStyle.h"
#import "iButton.h"
#import "HumanResource_textBoxNextLineStyle.h"
#import "iTextBox.h"
#import "mobl_ipadstyle_textBoxStyle.h"
#import "iNumField.h"
#import "HumanResource_switchNextLineStyle.h"
#import "iSwitch.h"
#import "mobl_ipadstyle_rightButtonStyle.h"
#import "iRightButton.h"
#import "mobl_ipadstyle_headerStyle.h"
#import "iHeader.h"
#import "root.h"
#import "root_callback_tmp186.h"
#import "root_callback_tmp176.h"
#import "root_callback_tmp174.h"
#import "root_callback_a.h"
#import "HumanResource.h"

@implementation root
@synthesize window;
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int i_8275 = -1;
	
	[HumanResource getPerson:nil];
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred13 = [[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] init]];
	[self.scope set:@"styleVar" variable:VarDeclInferred13];
	BindableObject* VarDeclInferred14 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"firstName" variable:VarDeclInferred14];
	BindableObject* VarDeclInferred15 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"lastName" variable:VarDeclInferred15];
	BindableObject* VarDeclInferred16 = [[BindableObject alloc] initWithNumber: 25];
	[self.scope set:@"age" variable:VarDeclInferred16];
	BindableObject* VarDeclInferred17 = [[BindableObject alloc] initWithBool: NO];
	[self.scope set:@"newspaper" variable:VarDeclInferred17];
	BindableObject* VarDeclInferred18 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_a alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"a" variable:VarDeclInferred18];
	BindableObject* VarDeclInferred19 = [[BindableObject alloc] initWithValue: @"Registeration Form"];
	[self.scope set:@"formTitle" variable:VarDeclInferred19];
	BindableObject* VarDeclInferred20 = [[BindableObject alloc] initWithValue: @"Make Invalid"];
	[self.scope set:@"makeInvalidTitle" variable:VarDeclInferred20];
	BindableObject* VarDeclInferred21 = [[BindableObject alloc] initWithValue: @"Personal Information"];
	[self.scope set:@"sectionOneTitle" variable:VarDeclInferred21];
	BindableObject* VarDeclInferred22 = [[BindableObject alloc] initWithValue: @"Registeration Information"];
	[self.scope set:@"sectionTwoTitle" variable:VarDeclInferred22];
	BindableObject* VarDeclInferred23 = [[BindableObject alloc] initWithValue: @"Sponsored by UNICEF"];
	[self.scope set:@"sponsor" variable:VarDeclInferred23];
	BindableObject* VarDecl1 = [[BindableObject alloc] initWithValue: [[NSMutableArray alloc] initWithObjects:[[BindableObject alloc] initWithNumber:1],[[BindableObject alloc] initWithNumber:2],[[BindableObject alloc] initWithNumber:3], nil]];
	[self.scope set:@"items" variable:VarDecl1];
	
	[self.scope createInnerScope];
	//changing iHeader_iHeader1 arguments to an array
	
	NSMutableArray* arguments_iHeader_iHeader10 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_iHeader10 addObject:(BindableObject*)[self.scope get: @"formTitle"]];
	[arguments_iHeader_iHeader10 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_headerStyle alloc] initialize]]];
	
	//initializing [varName] control
	iHeader* iHeader_iHeader1 = [[iHeader alloc] initialize:arguments_iHeader_iHeader10 container: [containerStack top]];
	//push iHeader_iHeader1 to stack to add innert controls
	[containerStack push:iHeader_iHeader1];
	BindableObject* DeriveDecl27 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp174 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp174" variable:DeriveDecl27];
	
	[self.scope createInnerScope];
	//changing iRightButton_iRightButton1 arguments to an array
	
	NSMutableArray* arguments_iRightButton_iRightButton10 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_iRightButton10 addObject:(BindableObject*)[self.scope get: @"makeInvalidTitle"]];
	[arguments_iRightButton_iRightButton10 addObject:(BindableObject*)[self.scope get: @"tmp174"]];
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
	BindableObject* DeriveDecl28 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp176 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp176" variable:DeriveDecl28];
	BindableObject* DeriveDecl29 = [[BindableObject alloc] initWithValue: @"Go To Second Screen"];
	[self.scope set:@"tmp175" variable:DeriveDecl29];
	
	[self.scope createInnerScope];
	//changing iButton_iButton2 arguments to an array
	
	NSMutableArray* arguments_iButton_iButton20 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_iButton20 addObject:(BindableObject*)[self.scope get: @"tmp175"]];
	[arguments_iButton_iButton20 addObject:(BindableObject*)[self.scope get: @"tmp176"]];
	[arguments_iButton_iButton20 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
	
	//initializing [varName] control
	iButton* iButton_iButton2 = [[iButton alloc] initialize:arguments_iButton_iButton20 container: [containerStack top]];
	//push iButton_iButton2 to stack to add innert controls
	[containerStack push:iButton_iButton2];
	
	//pop iButton_iButton2
	[containerStack pop];
	[iButton_iButton2 finilize];
	[[containerStack top] addBodyControl:iButton_iButton2];
	[self.scope exitScope];
	BindableObject* DeriveDecl30 = [[BindableObject alloc] initWithValue: @"Form Title"];
	[self.scope set:@"tmp177" variable:DeriveDecl30];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox8 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox80 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox80 addObject:(BindableObject*)[self.scope get: @"formTitle"]];
	[arguments_iTextBox_iTextBox80 addObject:(BindableObject*)[self.scope get: @"tmp177"]];
	[arguments_iTextBox_iTextBox80 addObject:(BindableObject*)[self.scope get: @"styleVar"]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox8 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox80 container: [containerStack top]];
	//push iTextBox_iTextBox8 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox8];
	
	//pop iTextBox_iTextBox8
	[containerStack pop];
	[iTextBox_iTextBox8 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox8];
	[self.scope exitScope];
	BindableObject* DeriveDecl31 = [[BindableObject alloc] initWithValue: @"Header Button"];
	[self.scope set:@"tmp178" variable:DeriveDecl31];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox9 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox90 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox90 addObject:(BindableObject*)[self.scope get: @"makeInvalidTitle"]];
	[arguments_iTextBox_iTextBox90 addObject:(BindableObject*)[self.scope get: @"tmp178"]];
	[arguments_iTextBox_iTextBox90 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox9 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox90 container: [containerStack top]];
	//push iTextBox_iTextBox9 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox9];
	
	//pop iTextBox_iTextBox9
	[containerStack pop];
	[iTextBox_iTextBox9 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox9];
	[self.scope exitScope];
	BindableObject* DeriveDecl32 = [[BindableObject alloc] initWithValue: @"First Name"];
	[self.scope set:@"tmp179" variable:DeriveDecl32];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox10 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox100 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox100 addObject:(BindableObject*)[self.scope get: @"firstName"]];
	[arguments_iTextBox_iTextBox100 addObject:(BindableObject*)[self.scope get: @"tmp179"]];
	[arguments_iTextBox_iTextBox100 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox10 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox100 container: [containerStack top]];
	//push iTextBox_iTextBox10 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox10];
	
	//pop iTextBox_iTextBox10
	[containerStack pop];
	[iTextBox_iTextBox10 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox10];
	[self.scope exitScope];
	BindableObject* DeriveDecl33 = [[BindableObject alloc] initWithValue: @"Last Name"];
	[self.scope set:@"tmp181" variable:DeriveDecl33];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox11 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox110 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox110 addObject:(BindableObject*)[self.scope get: @"lastName"]];
	[arguments_iTextBox_iTextBox110 addObject:(BindableObject*)[self.scope get: @"tmp181"]];
	[arguments_iTextBox_iTextBox110 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox11 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox110 container: [containerStack top]];
	//push iTextBox_iTextBox11 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox11];
	
	//pop iTextBox_iTextBox11
	[containerStack pop];
	[iTextBox_iTextBox11 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox11];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing iSwitch_iSwitch3 arguments to an array
	
	NSMutableArray* arguments_iSwitch_iSwitch30 = [[NSMutableArray alloc] init];
	
	[arguments_iSwitch_iSwitch30 addObject:(BindableObject*)[self.scope get: @"newspaper"]];
	[arguments_iSwitch_iSwitch30 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_switchNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iSwitch* iSwitch_iSwitch3 = [[iSwitch alloc] initialize:arguments_iSwitch_iSwitch30 container: [containerStack top]];
	//push iSwitch_iSwitch3 to stack to add innert controls
	[containerStack push:iSwitch_iSwitch3];
	
	//pop iSwitch_iSwitch3
	[containerStack pop];
	[iSwitch_iSwitch3 finilize];
	[[containerStack top] addBodyControl:iSwitch_iSwitch3];
	[self.scope exitScope];
	BindableObject* DeriveDecl34 = [[BindableObject alloc] initWithValue: @"Age"];
	[self.scope set:@"tmp182" variable:DeriveDecl34];
	
	[self.scope createInnerScope];
	//changing iNumField_iNumField3 arguments to an array
	
	NSMutableArray* arguments_iNumField_iNumField30 = [[NSMutableArray alloc] init];
	
	[arguments_iNumField_iNumField30 addObject:(BindableObject*)[self.scope get: @"age"]];
	[arguments_iNumField_iNumField30 addObject:(BindableObject*)[self.scope get: @"tmp182"]];
	[arguments_iNumField_iNumField30 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_textBoxStyle alloc] initialize]]];
	
	//initializing [varName] control
	iNumField* iNumField_iNumField3 = [[iNumField alloc] initialize:arguments_iNumField_iNumField30 container: [containerStack top]];
	//push iNumField_iNumField3 to stack to add innert controls
	[containerStack push:iNumField_iNumField3];
	
	//pop iNumField_iNumField3
	[containerStack pop];
	[iNumField_iNumField3 finilize];
	[[containerStack top] addBodyControl:iNumField_iNumField3];
	[self.scope exitScope];
	BindableObject* DeriveDecl35 = [[BindableObject alloc] initWithValue: @"Sponsor"];
	[self.scope set:@"tmp183" variable:DeriveDecl35];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox12 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox120 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox120 addObject:(BindableObject*)[self.scope get: @"sponsor"]];
	[arguments_iTextBox_iTextBox120 addObject:(BindableObject*)[self.scope get: @"tmp183"]];
	[arguments_iTextBox_iTextBox120 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox12 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox120 container: [containerStack top]];
	//push iTextBox_iTextBox12 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox12];
	
	//pop iTextBox_iTextBox12
	[containerStack pop];
	[iTextBox_iTextBox12 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox12];
	[self.scope exitScope];
	BindableObject* DeriveDecl36 = [[BindableObject alloc] initWithValue: @"Section one title"];
	[self.scope set:@"tmp184" variable:DeriveDecl36];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox13 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox130 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox130 addObject:(BindableObject*)[self.scope get: @"sectionOneTitle"]];
	[arguments_iTextBox_iTextBox130 addObject:(BindableObject*)[self.scope get: @"tmp184"]];
	[arguments_iTextBox_iTextBox130 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox13 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox130 container: [containerStack top]];
	//push iTextBox_iTextBox13 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox13];
	
	//pop iTextBox_iTextBox13
	[containerStack pop];
	[iTextBox_iTextBox13 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox13];
	[self.scope exitScope];
	
	for (BindableObject* item in [(BindableObject*)[self.scope get: @"items"] value])
	{
		[self.scope createInnerScope];
		[self.scope set:@"item" variable:item];
		BindableObject* DeriveDecl37 = [[BindableObject alloc] initWithValue: 
		                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp186 alloc] initWithScope:self.scope]]
		                                                                           ];
		[self.scope set:@"tmp186" variable:DeriveDecl37];
		BindableObject* DeriveDecl38 = [[BindableObject alloc] initWithValue: @"Age"];
		[self.scope set:@"tmp185" variable:DeriveDecl38];
		
		[self.scope createInnerScope];
		//changing iButton_iButton3 arguments to an array
		
		NSMutableArray* arguments_iButton_iButton30 = [[NSMutableArray alloc] init];
		
		[arguments_iButton_iButton30 addObject:(BindableObject*)[self.scope get: @"tmp185"]];
		[arguments_iButton_iButton30 addObject:(BindableObject*)[self.scope get: @"tmp186"]];
		[arguments_iButton_iButton30 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
		
		//initializing [varName] control
		iButton* iButton_iButton3 = [[iButton alloc] initialize:arguments_iButton_iButton30 container: [containerStack top]];
		//push iButton_iButton3 to stack to add innert controls
		[containerStack push:iButton_iButton3];
		
		//pop iButton_iButton3
		[containerStack pop];
		[iButton_iButton3 finilize];
		[[containerStack top] addBodyControl:iButton_iButton3];
		[self.scope exitScope];
		
		[self.scope exitScope];
	}
	
	[self.scope createInnerScope];
	//changing iTable_iTable1 arguments to an array
	
	NSMutableArray* arguments_iTable_iTable10 = [[NSMutableArray alloc] init];
	
	[arguments_iTable_iTable10 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_tableStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTable* iTable_iTable1 = [[iTable alloc] initialize:arguments_iTable_iTable10 container: [containerStack top]];
	//push iTable_iTable1 to stack to add innert controls
	[containerStack push:iTable_iTable1];
	
	[self.scope createInnerScope];
	//changing iSection_iSection2 arguments to an array
	
	NSMutableArray* arguments_iSection_iSection20 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_iSection20 addObject:(BindableObject*)[self.scope get: @"sectionOneTitle"]];
	[arguments_iSection_iSection20 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_sectionStyle alloc] initialize]]];
	
	//initializing [varName] control
	iSection* iSection_iSection2 = [[iSection alloc] initialize:arguments_iSection_iSection20 container: [containerStack top]];
	//push iSection_iSection2 to stack to add innert controls
	[containerStack push:iSection_iSection2];
	BindableObject* DeriveDecl39 = [[BindableObject alloc] initWithValue: @"First Name"];
	[self.scope set:@"tmp188" variable:DeriveDecl39];
	BindableObject* DeriveDecl40 = [[BindableObject alloc] initWithValue: @"John"];
	[self.scope set:@"tmp187" variable:DeriveDecl40];
	
	[self.scope createInnerScope];
	//changing HumanResource_iItemEdit_HumanResource_iItemEdit2 arguments to an array
	
	NSMutableArray* arguments_HumanResource_iItemEdit_HumanResource_iItemEdit20 = [[NSMutableArray alloc] init];
	
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit20 addObject:(BindableObject*)[self.scope get: @"firstName"]];
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit20 addObject:(BindableObject*)[self.scope get: @"tmp187"]];
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit20 addObject:(BindableObject*)[self.scope get: @"tmp188"]];
	
	//initializing [varName] control
	HumanResource_iItemEdit* HumanResource_iItemEdit_HumanResource_iItemEdit2 = [[HumanResource_iItemEdit alloc] initialize:arguments_HumanResource_iItemEdit_HumanResource_iItemEdit20 container: [containerStack top]];
	//push HumanResource_iItemEdit_HumanResource_iItemEdit2 to stack to add innert controls
	[containerStack push:HumanResource_iItemEdit_HumanResource_iItemEdit2];
	
	//pop HumanResource_iItemEdit_HumanResource_iItemEdit2
	[containerStack pop];
	[HumanResource_iItemEdit_HumanResource_iItemEdit2 finilize];
	[[containerStack top] addBodyControl:HumanResource_iItemEdit_HumanResource_iItemEdit2];
	[self.scope exitScope];
	BindableObject* DeriveDecl41 = [[BindableObject alloc] initWithValue: @"Last Name"];
	[self.scope set:@"tmp191" variable:DeriveDecl41];
	BindableObject* DeriveDecl42 = [[BindableObject alloc] initWithValue: @"Smith"];
	[self.scope set:@"tmp189" variable:DeriveDecl42];
	
	[self.scope createInnerScope];
	//changing HumanResource_iItemEdit_HumanResource_iItemEdit3 arguments to an array
	
	NSMutableArray* arguments_HumanResource_iItemEdit_HumanResource_iItemEdit30 = [[NSMutableArray alloc] init];
	
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit30 addObject:(BindableObject*)[self.scope get: @"lastName"]];
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit30 addObject:(BindableObject*)[self.scope get: @"tmp189"]];
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit30 addObject:(BindableObject*)[self.scope get: @"tmp191"]];
	
	//initializing [varName] control
	HumanResource_iItemEdit* HumanResource_iItemEdit_HumanResource_iItemEdit3 = [[HumanResource_iItemEdit alloc] initialize:arguments_HumanResource_iItemEdit_HumanResource_iItemEdit30 container: [containerStack top]];
	//push HumanResource_iItemEdit_HumanResource_iItemEdit3 to stack to add innert controls
	[containerStack push:HumanResource_iItemEdit_HumanResource_iItemEdit3];
	
	//pop HumanResource_iItemEdit_HumanResource_iItemEdit3
	[containerStack pop];
	[HumanResource_iItemEdit_HumanResource_iItemEdit3 finilize];
	[[containerStack top] addBodyControl:HumanResource_iItemEdit_HumanResource_iItemEdit3];
	[self.scope exitScope];
	BindableObject* DeriveDecl43 = [[BindableObject alloc] initWithValue: @"Age"];
	[self.scope set:@"tmp193" variable:DeriveDecl43];
	BindableObject* DeriveDecl44 = [[BindableObject alloc] initWithValue: @"25"];
	[self.scope set:@"tmp192" variable:DeriveDecl44];
	
	[self.scope createInnerScope];
	//changing HumanResource_iItemNum_HumanResource_iItemNum1 arguments to an array
	
	NSMutableArray* arguments_HumanResource_iItemNum_HumanResource_iItemNum10 = [[NSMutableArray alloc] init];
	
	[arguments_HumanResource_iItemNum_HumanResource_iItemNum10 addObject:(BindableObject*)[self.scope get: @"age"]];
	[arguments_HumanResource_iItemNum_HumanResource_iItemNum10 addObject:(BindableObject*)[self.scope get: @"tmp192"]];
	[arguments_HumanResource_iItemNum_HumanResource_iItemNum10 addObject:(BindableObject*)[self.scope get: @"tmp193"]];
	
	//initializing [varName] control
	HumanResource_iItemNum* HumanResource_iItemNum_HumanResource_iItemNum1 = [[HumanResource_iItemNum alloc] initialize:arguments_HumanResource_iItemNum_HumanResource_iItemNum10 container: [containerStack top]];
	//push HumanResource_iItemNum_HumanResource_iItemNum1 to stack to add innert controls
	[containerStack push:HumanResource_iItemNum_HumanResource_iItemNum1];
	
	//pop HumanResource_iItemNum_HumanResource_iItemNum1
	[containerStack pop];
	[HumanResource_iItemNum_HumanResource_iItemNum1 finilize];
	[[containerStack top] addBodyControl:HumanResource_iItemNum_HumanResource_iItemNum1];
	[self.scope exitScope];
	
	//pop iSection_iSection2
	[containerStack pop];
	[iSection_iSection2 finilize];
	[[containerStack top] addBodyControl:iSection_iSection2];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing iSection_iSection3 arguments to an array
	
	NSMutableArray* arguments_iSection_iSection30 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_iSection30 addObject:(BindableObject*)[self.scope get: @"sectionTwoTitle"]];
	[arguments_iSection_iSection30 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_sectionStyle alloc] initialize]]];
	
	//initializing [varName] control
	iSection* iSection_iSection3 = [[iSection alloc] initialize:arguments_iSection_iSection30 container: [containerStack top]];
	//push iSection_iSection3 to stack to add innert controls
	[containerStack push:iSection_iSection3];
	BindableObject* DeriveDecl45 = [[BindableObject alloc] initWithValue: @"Newspaper"];
	[self.scope set:@"tmp194" variable:DeriveDecl45];
	
	[self.scope createInnerScope];
	//changing HumanResource_iItemCheck_HumanResource_iItemCheck1 arguments to an array
	
	NSMutableArray* arguments_HumanResource_iItemCheck_HumanResource_iItemCheck10 = [[NSMutableArray alloc] init];
	
	[arguments_HumanResource_iItemCheck_HumanResource_iItemCheck10 addObject:(BindableObject*)[self.scope get: @"newspaper"]];
	[arguments_HumanResource_iItemCheck_HumanResource_iItemCheck10 addObject:(BindableObject*)[self.scope get: @"tmp194"]];
	
	//initializing [varName] control
	HumanResource_iItemCheck* HumanResource_iItemCheck_HumanResource_iItemCheck1 = [[HumanResource_iItemCheck alloc] initialize:arguments_HumanResource_iItemCheck_HumanResource_iItemCheck10 container: [containerStack top]];
	//push HumanResource_iItemCheck_HumanResource_iItemCheck1 to stack to add innert controls
	[containerStack push:HumanResource_iItemCheck_HumanResource_iItemCheck1];
	
	//pop HumanResource_iItemCheck_HumanResource_iItemCheck1
	[containerStack pop];
	[HumanResource_iItemCheck_HumanResource_iItemCheck1 finilize];
	[[containerStack top] addBodyControl:HumanResource_iItemCheck_HumanResource_iItemCheck1];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing iItem_iItem7 arguments to an array
	
	NSMutableArray* arguments_iItem_iItem70 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_iItem70 addObject:(BindableObject*)[self.scope get: @"sponsor"]];
	[arguments_iItem_iItem70 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_itemStyle alloc] initialize]]];
	
	//initializing [varName] control
	iItem* iItem_iItem7 = [[iItem alloc] initialize:arguments_iItem_iItem70 container: [containerStack top]];
	//push iItem_iItem7 to stack to add innert controls
	[containerStack push:iItem_iItem7];
	
	//pop iItem_iItem7
	[containerStack pop];
	[iItem_iItem7 finilize];
	[[containerStack top] addBodyControl:iItem_iItem7];
	[self.scope exitScope];
	
	//pop iSection_iSection3
	[containerStack pop];
	[iSection_iSection3 finilize];
	[[containerStack top] addBodyControl:iSection_iSection3];
	[self.scope exitScope];
	
	//pop iTable_iTable1
	[containerStack pop];
	[iTable_iTable1 finilize];
	[[containerStack top] addBodyControl:iTable_iTable1];
	[self.scope exitScope];
	 
	//pop screen 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
