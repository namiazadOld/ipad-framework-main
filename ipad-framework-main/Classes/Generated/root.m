

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
#import "root_callback_tmp1123.h"
#import "root_callback_tmp1114.h"
#import "root_callback_tmp1112.h"
#import "root_callback_a.h"

@implementation root
@synthesize window;
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[[NSArray alloc] initWithObjects:2, 3, nil];
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int d_74498 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred98 = [[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] init]];
	[self.scope set:@"styleVar" variable:VarDeclInferred98];
	BindableObject* VarDeclInferred99 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"firstName" variable:VarDeclInferred99];
	BindableObject* VarDeclInferred100 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"lastName" variable:VarDeclInferred100];
	BindableObject* VarDeclInferred101 = [[BindableObject alloc] initWithNumber: 25];
	[self.scope set:@"age" variable:VarDeclInferred101];
	BindableObject* VarDeclInferred102 = [[BindableObject alloc] initWithBool: NO];
	[self.scope set:@"newspaper" variable:VarDeclInferred102];
	BindableObject* VarDeclInferred103 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_a alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"a" variable:VarDeclInferred103];
	BindableObject* VarDeclInferred104 = [[BindableObject alloc] initWithValue: @"Registeration Form"];
	[self.scope set:@"formTitle" variable:VarDeclInferred104];
	BindableObject* VarDeclInferred105 = [[BindableObject alloc] initWithValue: @"Make Invalid"];
	[self.scope set:@"makeInvalidTitle" variable:VarDeclInferred105];
	BindableObject* VarDeclInferred106 = [[BindableObject alloc] initWithValue: @"Personal Information"];
	[self.scope set:@"sectionOneTitle" variable:VarDeclInferred106];
	BindableObject* VarDeclInferred107 = [[BindableObject alloc] initWithValue: @"Registeration Information"];
	[self.scope set:@"sectionTwoTitle" variable:VarDeclInferred107];
	BindableObject* VarDeclInferred108 = [[BindableObject alloc] initWithValue: @"Sponsored by UNICEF"];
	[self.scope set:@"sponsor" variable:VarDeclInferred108];
	BindableObject* VarDecl8 = [[BindableObject alloc] initWithValue: [[NSMutableArray alloc] initWithObjects:[[BindableObject alloc] initWithNumber:1],[[BindableObject alloc] initWithNumber:2],[[BindableObject alloc] initWithNumber:3], nil]];
	[self.scope set:@"items" variable:VarDecl8];
	
	[self.scope createInnerScope];
	//changing iHeader_iHeader8 arguments to an array
	
	NSMutableArray* arguments_iHeader_iHeader80 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_iHeader80 addObject:(BindableObject*)[self.scope get: @"formTitle"]];
	[arguments_iHeader_iHeader80 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_headerStyle alloc] initialize]]];
	
	//initializing [varName] control
	iHeader* iHeader_iHeader8 = [[iHeader alloc] initialize:arguments_iHeader_iHeader80 container: [containerStack top]];
	//push iHeader_iHeader8 to stack to add innert controls
	[containerStack push:iHeader_iHeader8];
	BindableObject* DeriveDecl188 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp1112 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp1112" variable:DeriveDecl188];
	
	[self.scope createInnerScope];
	//changing iRightButton_iRightButton8 arguments to an array
	
	NSMutableArray* arguments_iRightButton_iRightButton80 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_iRightButton80 addObject:(BindableObject*)[self.scope get: @"makeInvalidTitle"]];
	[arguments_iRightButton_iRightButton80 addObject:(BindableObject*)[self.scope get: @"tmp1112"]];
	[arguments_iRightButton_iRightButton80 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_rightButtonStyle alloc] initialize]]];
	
	//initializing [varName] control
	iRightButton* iRightButton_iRightButton8 = [[iRightButton alloc] initialize:arguments_iRightButton_iRightButton80 container: [containerStack top]];
	//push iRightButton_iRightButton8 to stack to add innert controls
	[containerStack push:iRightButton_iRightButton8];
	
	//pop iRightButton_iRightButton8
	[containerStack pop];
	[iRightButton_iRightButton8 finilize];
	[[containerStack top] addBodyControl:iRightButton_iRightButton8];
	[self.scope exitScope];
	
	//pop iHeader_iHeader8
	[containerStack pop];
	[iHeader_iHeader8 finilize];
	[[containerStack top] addBodyControl:iHeader_iHeader8];
	[self.scope exitScope];
	BindableObject* DeriveDecl189 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp1114 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp1114" variable:DeriveDecl189];
	BindableObject* DeriveDecl190 = [[BindableObject alloc] initWithValue: @"Go To Second Screen"];
	[self.scope set:@"tmp1113" variable:DeriveDecl190];
	
	[self.scope createInnerScope];
	//changing iButton_iButton16 arguments to an array
	
	NSMutableArray* arguments_iButton_iButton160 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_iButton160 addObject:(BindableObject*)[self.scope get: @"tmp1113"]];
	[arguments_iButton_iButton160 addObject:(BindableObject*)[self.scope get: @"tmp1114"]];
	[arguments_iButton_iButton160 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
	
	//initializing [varName] control
	iButton* iButton_iButton16 = [[iButton alloc] initialize:arguments_iButton_iButton160 container: [containerStack top]];
	//push iButton_iButton16 to stack to add innert controls
	[containerStack push:iButton_iButton16];
	
	//pop iButton_iButton16
	[containerStack pop];
	[iButton_iButton16 finilize];
	[[containerStack top] addBodyControl:iButton_iButton16];
	[self.scope exitScope];
	BindableObject* DeriveDecl191 = [[BindableObject alloc] initWithValue: @"Form Title"];
	[self.scope set:@"tmp1115" variable:DeriveDecl191];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox57 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox570 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox570 addObject:(BindableObject*)[self.scope get: @"formTitle"]];
	[arguments_iTextBox_iTextBox570 addObject:(BindableObject*)[self.scope get: @"tmp1115"]];
	[arguments_iTextBox_iTextBox570 addObject:(BindableObject*)[self.scope get: @"styleVar"]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox57 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox570 container: [containerStack top]];
	//push iTextBox_iTextBox57 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox57];
	
	//pop iTextBox_iTextBox57
	[containerStack pop];
	[iTextBox_iTextBox57 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox57];
	[self.scope exitScope];
	BindableObject* DeriveDecl192 = [[BindableObject alloc] initWithValue: @"Header Button"];
	[self.scope set:@"tmp1116" variable:DeriveDecl192];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox58 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox580 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox580 addObject:(BindableObject*)[self.scope get: @"makeInvalidTitle"]];
	[arguments_iTextBox_iTextBox580 addObject:(BindableObject*)[self.scope get: @"tmp1116"]];
	[arguments_iTextBox_iTextBox580 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox58 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox580 container: [containerStack top]];
	//push iTextBox_iTextBox58 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox58];
	
	//pop iTextBox_iTextBox58
	[containerStack pop];
	[iTextBox_iTextBox58 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox58];
	[self.scope exitScope];
	BindableObject* DeriveDecl193 = [[BindableObject alloc] initWithValue: @"First Name"];
	[self.scope set:@"tmp1117" variable:DeriveDecl193];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox59 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox590 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox590 addObject:(BindableObject*)[self.scope get: @"firstName"]];
	[arguments_iTextBox_iTextBox590 addObject:(BindableObject*)[self.scope get: @"tmp1117"]];
	[arguments_iTextBox_iTextBox590 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox59 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox590 container: [containerStack top]];
	//push iTextBox_iTextBox59 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox59];
	
	//pop iTextBox_iTextBox59
	[containerStack pop];
	[iTextBox_iTextBox59 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox59];
	[self.scope exitScope];
	BindableObject* DeriveDecl194 = [[BindableObject alloc] initWithValue: @"Last Name"];
	[self.scope set:@"tmp1118" variable:DeriveDecl194];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox60 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox600 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox600 addObject:(BindableObject*)[self.scope get: @"lastName"]];
	[arguments_iTextBox_iTextBox600 addObject:(BindableObject*)[self.scope get: @"tmp1118"]];
	[arguments_iTextBox_iTextBox600 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox60 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox600 container: [containerStack top]];
	//push iTextBox_iTextBox60 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox60];
	
	//pop iTextBox_iTextBox60
	[containerStack pop];
	[iTextBox_iTextBox60 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox60];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing iSwitch_iSwitch17 arguments to an array
	
	NSMutableArray* arguments_iSwitch_iSwitch170 = [[NSMutableArray alloc] init];
	
	[arguments_iSwitch_iSwitch170 addObject:(BindableObject*)[self.scope get: @"newspaper"]];
	[arguments_iSwitch_iSwitch170 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_switchNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iSwitch* iSwitch_iSwitch17 = [[iSwitch alloc] initialize:arguments_iSwitch_iSwitch170 container: [containerStack top]];
	//push iSwitch_iSwitch17 to stack to add innert controls
	[containerStack push:iSwitch_iSwitch17];
	
	//pop iSwitch_iSwitch17
	[containerStack pop];
	[iSwitch_iSwitch17 finilize];
	[[containerStack top] addBodyControl:iSwitch_iSwitch17];
	[self.scope exitScope];
	BindableObject* DeriveDecl195 = [[BindableObject alloc] initWithValue: @"Age"];
	[self.scope set:@"tmp1119" variable:DeriveDecl195];
	
	[self.scope createInnerScope];
	//changing iNumField_iNumField17 arguments to an array
	
	NSMutableArray* arguments_iNumField_iNumField170 = [[NSMutableArray alloc] init];
	
	[arguments_iNumField_iNumField170 addObject:(BindableObject*)[self.scope get: @"age"]];
	[arguments_iNumField_iNumField170 addObject:(BindableObject*)[self.scope get: @"tmp1119"]];
	[arguments_iNumField_iNumField170 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_textBoxStyle alloc] initialize]]];
	
	//initializing [varName] control
	iNumField* iNumField_iNumField17 = [[iNumField alloc] initialize:arguments_iNumField_iNumField170 container: [containerStack top]];
	//push iNumField_iNumField17 to stack to add innert controls
	[containerStack push:iNumField_iNumField17];
	
	//pop iNumField_iNumField17
	[containerStack pop];
	[iNumField_iNumField17 finilize];
	[[containerStack top] addBodyControl:iNumField_iNumField17];
	[self.scope exitScope];
	BindableObject* DeriveDecl196 = [[BindableObject alloc] initWithValue: @"Sponsor"];
	[self.scope set:@"tmp1120" variable:DeriveDecl196];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox61 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox610 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox610 addObject:(BindableObject*)[self.scope get: @"sponsor"]];
	[arguments_iTextBox_iTextBox610 addObject:(BindableObject*)[self.scope get: @"tmp1120"]];
	[arguments_iTextBox_iTextBox610 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox61 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox610 container: [containerStack top]];
	//push iTextBox_iTextBox61 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox61];
	
	//pop iTextBox_iTextBox61
	[containerStack pop];
	[iTextBox_iTextBox61 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox61];
	[self.scope exitScope];
	BindableObject* DeriveDecl197 = [[BindableObject alloc] initWithValue: @"Section one title"];
	[self.scope set:@"tmp1121" variable:DeriveDecl197];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox62 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox620 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox620 addObject:(BindableObject*)[self.scope get: @"sectionOneTitle"]];
	[arguments_iTextBox_iTextBox620 addObject:(BindableObject*)[self.scope get: @"tmp1121"]];
	[arguments_iTextBox_iTextBox620 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox62 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox620 container: [containerStack top]];
	//push iTextBox_iTextBox62 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox62];
	
	//pop iTextBox_iTextBox62
	[containerStack pop];
	[iTextBox_iTextBox62 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox62];
	[self.scope exitScope];
	
	for (BindableObject* item in [(BindableObject*)[self.scope get: @"items"] value])
	{
		[self.scope createInnerScope];
		[self.scope set:@"item" variable:item];
		BindableObject* DeriveDecl198 = [[BindableObject alloc] initWithValue: 
		                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp1123 alloc] initWithScope:self.scope]]
		                                                                           ];
		[self.scope set:@"tmp1123" variable:DeriveDecl198];
		BindableObject* DeriveDecl199 = [[BindableObject alloc] initWithValue: @"Age"];
		[self.scope set:@"tmp1122" variable:DeriveDecl199];
		
		[self.scope createInnerScope];
		//changing iButton_iButton17 arguments to an array
		
		NSMutableArray* arguments_iButton_iButton170 = [[NSMutableArray alloc] init];
		
		[arguments_iButton_iButton170 addObject:(BindableObject*)[self.scope get: @"tmp1122"]];
		[arguments_iButton_iButton170 addObject:(BindableObject*)[self.scope get: @"tmp1123"]];
		[arguments_iButton_iButton170 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
		
		//initializing [varName] control
		iButton* iButton_iButton17 = [[iButton alloc] initialize:arguments_iButton_iButton170 container: [containerStack top]];
		//push iButton_iButton17 to stack to add innert controls
		[containerStack push:iButton_iButton17];
		
		//pop iButton_iButton17
		[containerStack pop];
		[iButton_iButton17 finilize];
		[[containerStack top] addBodyControl:iButton_iButton17];
		[self.scope exitScope];
		
		[self.scope exitScope];
	}
	
	[self.scope createInnerScope];
	//changing iTable_iTable8 arguments to an array
	
	NSMutableArray* arguments_iTable_iTable80 = [[NSMutableArray alloc] init];
	
	[arguments_iTable_iTable80 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_tableStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTable* iTable_iTable8 = [[iTable alloc] initialize:arguments_iTable_iTable80 container: [containerStack top]];
	//push iTable_iTable8 to stack to add innert controls
	[containerStack push:iTable_iTable8];
	
	[self.scope createInnerScope];
	//changing iSection_iSection16 arguments to an array
	
	NSMutableArray* arguments_iSection_iSection160 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_iSection160 addObject:(BindableObject*)[self.scope get: @"sectionOneTitle"]];
	[arguments_iSection_iSection160 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_sectionStyle alloc] initialize]]];
	
	//initializing [varName] control
	iSection* iSection_iSection16 = [[iSection alloc] initialize:arguments_iSection_iSection160 container: [containerStack top]];
	//push iSection_iSection16 to stack to add innert controls
	[containerStack push:iSection_iSection16];
	BindableObject* DeriveDecl200 = [[BindableObject alloc] initWithValue: @"First Name"];
	[self.scope set:@"tmp1125" variable:DeriveDecl200];
	BindableObject* DeriveDecl201 = [[BindableObject alloc] initWithValue: @"John"];
	[self.scope set:@"tmp1124" variable:DeriveDecl201];
	
	[self.scope createInnerScope];
	//changing HumanResource_iItemEdit_HumanResource_iItemEdit16 arguments to an array
	
	NSMutableArray* arguments_HumanResource_iItemEdit_HumanResource_iItemEdit160 = [[NSMutableArray alloc] init];
	
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit160 addObject:(BindableObject*)[self.scope get: @"firstName"]];
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit160 addObject:(BindableObject*)[self.scope get: @"tmp1124"]];
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit160 addObject:(BindableObject*)[self.scope get: @"tmp1125"]];
	
	//initializing [varName] control
	HumanResource_iItemEdit* HumanResource_iItemEdit_HumanResource_iItemEdit16 = [[HumanResource_iItemEdit alloc] initialize:arguments_HumanResource_iItemEdit_HumanResource_iItemEdit160 container: [containerStack top]];
	//push HumanResource_iItemEdit_HumanResource_iItemEdit16 to stack to add innert controls
	[containerStack push:HumanResource_iItemEdit_HumanResource_iItemEdit16];
	
	//pop HumanResource_iItemEdit_HumanResource_iItemEdit16
	[containerStack pop];
	[HumanResource_iItemEdit_HumanResource_iItemEdit16 finilize];
	[[containerStack top] addBodyControl:HumanResource_iItemEdit_HumanResource_iItemEdit16];
	[self.scope exitScope];
	BindableObject* DeriveDecl202 = [[BindableObject alloc] initWithValue: @"Last Name"];
	[self.scope set:@"tmp1127" variable:DeriveDecl202];
	BindableObject* DeriveDecl203 = [[BindableObject alloc] initWithValue: @"Smith"];
	[self.scope set:@"tmp1126" variable:DeriveDecl203];
	
	[self.scope createInnerScope];
	//changing HumanResource_iItemEdit_HumanResource_iItemEdit17 arguments to an array
	
	NSMutableArray* arguments_HumanResource_iItemEdit_HumanResource_iItemEdit170 = [[NSMutableArray alloc] init];
	
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit170 addObject:(BindableObject*)[self.scope get: @"lastName"]];
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit170 addObject:(BindableObject*)[self.scope get: @"tmp1126"]];
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit170 addObject:(BindableObject*)[self.scope get: @"tmp1127"]];
	
	//initializing [varName] control
	HumanResource_iItemEdit* HumanResource_iItemEdit_HumanResource_iItemEdit17 = [[HumanResource_iItemEdit alloc] initialize:arguments_HumanResource_iItemEdit_HumanResource_iItemEdit170 container: [containerStack top]];
	//push HumanResource_iItemEdit_HumanResource_iItemEdit17 to stack to add innert controls
	[containerStack push:HumanResource_iItemEdit_HumanResource_iItemEdit17];
	
	//pop HumanResource_iItemEdit_HumanResource_iItemEdit17
	[containerStack pop];
	[HumanResource_iItemEdit_HumanResource_iItemEdit17 finilize];
	[[containerStack top] addBodyControl:HumanResource_iItemEdit_HumanResource_iItemEdit17];
	[self.scope exitScope];
	BindableObject* DeriveDecl204 = [[BindableObject alloc] initWithValue: @"Age"];
	[self.scope set:@"tmp1129" variable:DeriveDecl204];
	BindableObject* DeriveDecl205 = [[BindableObject alloc] initWithValue: @"25"];
	[self.scope set:@"tmp1128" variable:DeriveDecl205];
	
	[self.scope createInnerScope];
	//changing HumanResource_iItemNum_HumanResource_iItemNum8 arguments to an array
	
	NSMutableArray* arguments_HumanResource_iItemNum_HumanResource_iItemNum80 = [[NSMutableArray alloc] init];
	
	[arguments_HumanResource_iItemNum_HumanResource_iItemNum80 addObject:(BindableObject*)[self.scope get: @"age"]];
	[arguments_HumanResource_iItemNum_HumanResource_iItemNum80 addObject:(BindableObject*)[self.scope get: @"tmp1128"]];
	[arguments_HumanResource_iItemNum_HumanResource_iItemNum80 addObject:(BindableObject*)[self.scope get: @"tmp1129"]];
	
	//initializing [varName] control
	HumanResource_iItemNum* HumanResource_iItemNum_HumanResource_iItemNum8 = [[HumanResource_iItemNum alloc] initialize:arguments_HumanResource_iItemNum_HumanResource_iItemNum80 container: [containerStack top]];
	//push HumanResource_iItemNum_HumanResource_iItemNum8 to stack to add innert controls
	[containerStack push:HumanResource_iItemNum_HumanResource_iItemNum8];
	
	//pop HumanResource_iItemNum_HumanResource_iItemNum8
	[containerStack pop];
	[HumanResource_iItemNum_HumanResource_iItemNum8 finilize];
	[[containerStack top] addBodyControl:HumanResource_iItemNum_HumanResource_iItemNum8];
	[self.scope exitScope];
	
	//pop iSection_iSection16
	[containerStack pop];
	[iSection_iSection16 finilize];
	[[containerStack top] addBodyControl:iSection_iSection16];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing iSection_iSection17 arguments to an array
	
	NSMutableArray* arguments_iSection_iSection170 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_iSection170 addObject:(BindableObject*)[self.scope get: @"sectionTwoTitle"]];
	[arguments_iSection_iSection170 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_sectionStyle alloc] initialize]]];
	
	//initializing [varName] control
	iSection* iSection_iSection17 = [[iSection alloc] initialize:arguments_iSection_iSection170 container: [containerStack top]];
	//push iSection_iSection17 to stack to add innert controls
	[containerStack push:iSection_iSection17];
	BindableObject* DeriveDecl206 = [[BindableObject alloc] initWithValue: @"Newspaper"];
	[self.scope set:@"tmp1130" variable:DeriveDecl206];
	
	[self.scope createInnerScope];
	//changing HumanResource_iItemCheck_HumanResource_iItemCheck8 arguments to an array
	
	NSMutableArray* arguments_HumanResource_iItemCheck_HumanResource_iItemCheck80 = [[NSMutableArray alloc] init];
	
	[arguments_HumanResource_iItemCheck_HumanResource_iItemCheck80 addObject:(BindableObject*)[self.scope get: @"newspaper"]];
	[arguments_HumanResource_iItemCheck_HumanResource_iItemCheck80 addObject:(BindableObject*)[self.scope get: @"tmp1130"]];
	
	//initializing [varName] control
	HumanResource_iItemCheck* HumanResource_iItemCheck_HumanResource_iItemCheck8 = [[HumanResource_iItemCheck alloc] initialize:arguments_HumanResource_iItemCheck_HumanResource_iItemCheck80 container: [containerStack top]];
	//push HumanResource_iItemCheck_HumanResource_iItemCheck8 to stack to add innert controls
	[containerStack push:HumanResource_iItemCheck_HumanResource_iItemCheck8];
	
	//pop HumanResource_iItemCheck_HumanResource_iItemCheck8
	[containerStack pop];
	[HumanResource_iItemCheck_HumanResource_iItemCheck8 finilize];
	[[containerStack top] addBodyControl:HumanResource_iItemCheck_HumanResource_iItemCheck8];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing iItem_iItem35 arguments to an array
	
	NSMutableArray* arguments_iItem_iItem350 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_iItem350 addObject:(BindableObject*)[self.scope get: @"sponsor"]];
	[arguments_iItem_iItem350 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_itemStyle alloc] initialize]]];
	
	//initializing [varName] control
	iItem* iItem_iItem35 = [[iItem alloc] initialize:arguments_iItem_iItem350 container: [containerStack top]];
	//push iItem_iItem35 to stack to add innert controls
	[containerStack push:iItem_iItem35];
	
	//pop iItem_iItem35
	[containerStack pop];
	[iItem_iItem35 finilize];
	[[containerStack top] addBodyControl:iItem_iItem35];
	[self.scope exitScope];
	
	//pop iSection_iSection17
	[containerStack pop];
	[iSection_iSection17 finilize];
	[[containerStack top] addBodyControl:iSection_iSection17];
	[self.scope exitScope];
	
	//pop iTable_iTable8
	[containerStack pop];
	[iTable_iTable8 finilize];
	[[containerStack top] addBodyControl:iTable_iTable8];
	[self.scope exitScope];
	 
	//pop screen 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
