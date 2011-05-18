

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
#import "root_callback_tmp642.h"
#import "root_callback_tmp632.h"
#import "root_callback_tmp629.h"
#import "root_callback_a.h"

@implementation root
@synthesize window;
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int z_29659 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred85 = [[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] init]];
	[self.scope set:@"styleVar" variable:VarDeclInferred85];
	BindableObject* VarDeclInferred86 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"firstName" variable:VarDeclInferred86];
	BindableObject* VarDeclInferred87 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"lastName" variable:VarDeclInferred87];
	BindableObject* VarDeclInferred88 = [[BindableObject alloc] initWithNumber: 25];
	[self.scope set:@"age" variable:VarDeclInferred88];
	BindableObject* VarDeclInferred89 = [[BindableObject alloc] initWithBool: NO];
	[self.scope set:@"newspaper" variable:VarDeclInferred89];
	BindableObject* VarDeclInferred90 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_a alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"a" variable:VarDeclInferred90];
	BindableObject* VarDeclInferred91 = [[BindableObject alloc] initWithValue: @"Registeration Form"];
	[self.scope set:@"formTitle" variable:VarDeclInferred91];
	BindableObject* VarDeclInferred92 = [[BindableObject alloc] initWithValue: @"Make Invalid"];
	[self.scope set:@"makeInvalidTitle" variable:VarDeclInferred92];
	BindableObject* VarDeclInferred93 = [[BindableObject alloc] initWithValue: @"Personal Information"];
	[self.scope set:@"sectionOneTitle" variable:VarDeclInferred93];
	BindableObject* VarDeclInferred94 = [[BindableObject alloc] initWithValue: @"Registeration Information"];
	[self.scope set:@"sectionTwoTitle" variable:VarDeclInferred94];
	BindableObject* VarDeclInferred95 = [[BindableObject alloc] initWithValue: @"Sponsored by UNICEF"];
	[self.scope set:@"sponsor" variable:VarDeclInferred95];
	BindableObject* VarDecl7 = [[BindableObject alloc] initWithValue: [[NSMutableArray alloc] initWithObjects:[[BindableObject alloc] initWithNumber:1],[[BindableObject alloc] initWithNumber:2],[[BindableObject alloc] initWithNumber:3], nil]];
	[self.scope set:@"items" variable:VarDecl7];
	
	[self.scope createInnerScope];
	//changing iHeader_iHeader7 arguments to an array
	
	NSMutableArray* arguments_iHeader_iHeader70 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_iHeader70 addObject:(BindableObject*)[self.scope get: @"formTitle"]];
	[arguments_iHeader_iHeader70 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_headerStyle alloc] initialize]]];
	
	//initializing [varName] control
	iHeader* iHeader_iHeader7 = [[iHeader alloc] initialize:arguments_iHeader_iHeader70 container: [containerStack top]];
	//push iHeader_iHeader7 to stack to add innert controls
	[containerStack push:iHeader_iHeader7];
	BindableObject* DeriveDecl165 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp629 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp629" variable:DeriveDecl165];
	
	[self.scope createInnerScope];
	//changing iRightButton_iRightButton7 arguments to an array
	
	NSMutableArray* arguments_iRightButton_iRightButton70 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_iRightButton70 addObject:(BindableObject*)[self.scope get: @"makeInvalidTitle"]];
	[arguments_iRightButton_iRightButton70 addObject:(BindableObject*)[self.scope get: @"tmp629"]];
	[arguments_iRightButton_iRightButton70 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_rightButtonStyle alloc] initialize]]];
	
	//initializing [varName] control
	iRightButton* iRightButton_iRightButton7 = [[iRightButton alloc] initialize:arguments_iRightButton_iRightButton70 container: [containerStack top]];
	//push iRightButton_iRightButton7 to stack to add innert controls
	[containerStack push:iRightButton_iRightButton7];
	
	//pop iRightButton_iRightButton7
	[containerStack pop];
	[iRightButton_iRightButton7 finilize];
	[[containerStack top] addBodyControl:iRightButton_iRightButton7];
	[self.scope exitScope];
	
	//pop iHeader_iHeader7
	[containerStack pop];
	[iHeader_iHeader7 finilize];
	[[containerStack top] addBodyControl:iHeader_iHeader7];
	[self.scope exitScope];
	BindableObject* DeriveDecl166 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp632 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp632" variable:DeriveDecl166];
	BindableObject* DeriveDecl167 = [[BindableObject alloc] initWithValue: @"Go To Second Screen"];
	[self.scope set:@"tmp631" variable:DeriveDecl167];
	
	[self.scope createInnerScope];
	//changing iButton_iButton14 arguments to an array
	
	NSMutableArray* arguments_iButton_iButton140 = [[NSMutableArray alloc] init];
	
	[arguments_iButton_iButton140 addObject:(BindableObject*)[self.scope get: @"tmp631"]];
	[arguments_iButton_iButton140 addObject:(BindableObject*)[self.scope get: @"tmp632"]];
	[arguments_iButton_iButton140 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
	
	//initializing [varName] control
	iButton* iButton_iButton14 = [[iButton alloc] initialize:arguments_iButton_iButton140 container: [containerStack top]];
	//push iButton_iButton14 to stack to add innert controls
	[containerStack push:iButton_iButton14];
	
	//pop iButton_iButton14
	[containerStack pop];
	[iButton_iButton14 finilize];
	[[containerStack top] addBodyControl:iButton_iButton14];
	[self.scope exitScope];
	BindableObject* DeriveDecl168 = [[BindableObject alloc] initWithValue: @"Form Title"];
	[self.scope set:@"tmp633" variable:DeriveDecl168];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox50 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox500 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox500 addObject:(BindableObject*)[self.scope get: @"formTitle"]];
	[arguments_iTextBox_iTextBox500 addObject:(BindableObject*)[self.scope get: @"tmp633"]];
	[arguments_iTextBox_iTextBox500 addObject:(BindableObject*)[self.scope get: @"styleVar"]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox50 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox500 container: [containerStack top]];
	//push iTextBox_iTextBox50 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox50];
	
	//pop iTextBox_iTextBox50
	[containerStack pop];
	[iTextBox_iTextBox50 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox50];
	[self.scope exitScope];
	BindableObject* DeriveDecl169 = [[BindableObject alloc] initWithValue: @"Header Button"];
	[self.scope set:@"tmp634" variable:DeriveDecl169];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox51 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox510 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox510 addObject:(BindableObject*)[self.scope get: @"makeInvalidTitle"]];
	[arguments_iTextBox_iTextBox510 addObject:(BindableObject*)[self.scope get: @"tmp634"]];
	[arguments_iTextBox_iTextBox510 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox51 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox510 container: [containerStack top]];
	//push iTextBox_iTextBox51 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox51];
	
	//pop iTextBox_iTextBox51
	[containerStack pop];
	[iTextBox_iTextBox51 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox51];
	[self.scope exitScope];
	BindableObject* DeriveDecl170 = [[BindableObject alloc] initWithValue: @"First Name"];
	[self.scope set:@"tmp635" variable:DeriveDecl170];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox52 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox520 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox520 addObject:(BindableObject*)[self.scope get: @"firstName"]];
	[arguments_iTextBox_iTextBox520 addObject:(BindableObject*)[self.scope get: @"tmp635"]];
	[arguments_iTextBox_iTextBox520 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox52 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox520 container: [containerStack top]];
	//push iTextBox_iTextBox52 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox52];
	
	//pop iTextBox_iTextBox52
	[containerStack pop];
	[iTextBox_iTextBox52 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox52];
	[self.scope exitScope];
	BindableObject* DeriveDecl171 = [[BindableObject alloc] initWithValue: @"Last Name"];
	[self.scope set:@"tmp636" variable:DeriveDecl171];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox53 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox530 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox530 addObject:(BindableObject*)[self.scope get: @"lastName"]];
	[arguments_iTextBox_iTextBox530 addObject:(BindableObject*)[self.scope get: @"tmp636"]];
	[arguments_iTextBox_iTextBox530 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox53 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox530 container: [containerStack top]];
	//push iTextBox_iTextBox53 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox53];
	
	//pop iTextBox_iTextBox53
	[containerStack pop];
	[iTextBox_iTextBox53 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox53];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing iSwitch_iSwitch15 arguments to an array
	
	NSMutableArray* arguments_iSwitch_iSwitch150 = [[NSMutableArray alloc] init];
	
	[arguments_iSwitch_iSwitch150 addObject:(BindableObject*)[self.scope get: @"newspaper"]];
	[arguments_iSwitch_iSwitch150 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_switchNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iSwitch* iSwitch_iSwitch15 = [[iSwitch alloc] initialize:arguments_iSwitch_iSwitch150 container: [containerStack top]];
	//push iSwitch_iSwitch15 to stack to add innert controls
	[containerStack push:iSwitch_iSwitch15];
	
	//pop iSwitch_iSwitch15
	[containerStack pop];
	[iSwitch_iSwitch15 finilize];
	[[containerStack top] addBodyControl:iSwitch_iSwitch15];
	[self.scope exitScope];
	BindableObject* DeriveDecl172 = [[BindableObject alloc] initWithValue: @"Age"];
	[self.scope set:@"tmp637" variable:DeriveDecl172];
	
	[self.scope createInnerScope];
	//changing iNumField_iNumField15 arguments to an array
	
	NSMutableArray* arguments_iNumField_iNumField150 = [[NSMutableArray alloc] init];
	
	[arguments_iNumField_iNumField150 addObject:(BindableObject*)[self.scope get: @"age"]];
	[arguments_iNumField_iNumField150 addObject:(BindableObject*)[self.scope get: @"tmp637"]];
	[arguments_iNumField_iNumField150 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_textBoxStyle alloc] initialize]]];
	
	//initializing [varName] control
	iNumField* iNumField_iNumField15 = [[iNumField alloc] initialize:arguments_iNumField_iNumField150 container: [containerStack top]];
	//push iNumField_iNumField15 to stack to add innert controls
	[containerStack push:iNumField_iNumField15];
	
	//pop iNumField_iNumField15
	[containerStack pop];
	[iNumField_iNumField15 finilize];
	[[containerStack top] addBodyControl:iNumField_iNumField15];
	[self.scope exitScope];
	BindableObject* DeriveDecl173 = [[BindableObject alloc] initWithValue: @"Sponsor"];
	[self.scope set:@"tmp638" variable:DeriveDecl173];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox54 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox540 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox540 addObject:(BindableObject*)[self.scope get: @"sponsor"]];
	[arguments_iTextBox_iTextBox540 addObject:(BindableObject*)[self.scope get: @"tmp638"]];
	[arguments_iTextBox_iTextBox540 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox54 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox540 container: [containerStack top]];
	//push iTextBox_iTextBox54 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox54];
	
	//pop iTextBox_iTextBox54
	[containerStack pop];
	[iTextBox_iTextBox54 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox54];
	[self.scope exitScope];
	BindableObject* DeriveDecl174 = [[BindableObject alloc] initWithValue: @"Section one title"];
	[self.scope set:@"tmp639" variable:DeriveDecl174];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox55 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox550 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox550 addObject:(BindableObject*)[self.scope get: @"sectionOneTitle"]];
	[arguments_iTextBox_iTextBox550 addObject:(BindableObject*)[self.scope get: @"tmp639"]];
	[arguments_iTextBox_iTextBox550 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox55 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox550 container: [containerStack top]];
	//push iTextBox_iTextBox55 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox55];
	
	//pop iTextBox_iTextBox55
	[containerStack pop];
	[iTextBox_iTextBox55 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox55];
	[self.scope exitScope];
	
	for (BindableObject* item in [(BindableObject*)[self.scope get: @"items"] value])
	{
		[self.scope createInnerScope];
		[self.scope set:@"item" variable:item];
		BindableObject* DeriveDecl175 = [[BindableObject alloc] initWithValue: 
		                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[root_callback_tmp642 alloc] initWithScope:self.scope]]
		                                                                           ];
		[self.scope set:@"tmp642" variable:DeriveDecl175];
		BindableObject* DeriveDecl176 = [[BindableObject alloc] initWithValue: @"Age"];
		[self.scope set:@"tmp641" variable:DeriveDecl176];
		
		[self.scope createInnerScope];
		//changing iButton_iButton15 arguments to an array
		
		NSMutableArray* arguments_iButton_iButton150 = [[NSMutableArray alloc] init];
		
		[arguments_iButton_iButton150 addObject:(BindableObject*)[self.scope get: @"tmp641"]];
		[arguments_iButton_iButton150 addObject:(BindableObject*)[self.scope get: @"tmp642"]];
		[arguments_iButton_iButton150 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_buttonStyle alloc] initialize]]];
		
		//initializing [varName] control
		iButton* iButton_iButton15 = [[iButton alloc] initialize:arguments_iButton_iButton150 container: [containerStack top]];
		//push iButton_iButton15 to stack to add innert controls
		[containerStack push:iButton_iButton15];
		
		//pop iButton_iButton15
		[containerStack pop];
		[iButton_iButton15 finilize];
		[[containerStack top] addBodyControl:iButton_iButton15];
		[self.scope exitScope];
		
		[self.scope exitScope];
	}
	
	[self.scope createInnerScope];
	//changing iTable_iTable7 arguments to an array
	
	NSMutableArray* arguments_iTable_iTable70 = [[NSMutableArray alloc] init];
	
	[arguments_iTable_iTable70 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_tableStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTable* iTable_iTable7 = [[iTable alloc] initialize:arguments_iTable_iTable70 container: [containerStack top]];
	//push iTable_iTable7 to stack to add innert controls
	[containerStack push:iTable_iTable7];
	
	[self.scope createInnerScope];
	//changing iSection_iSection14 arguments to an array
	
	NSMutableArray* arguments_iSection_iSection140 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_iSection140 addObject:(BindableObject*)[self.scope get: @"sectionOneTitle"]];
	[arguments_iSection_iSection140 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_sectionStyle alloc] initialize]]];
	
	//initializing [varName] control
	iSection* iSection_iSection14 = [[iSection alloc] initialize:arguments_iSection_iSection140 container: [containerStack top]];
	//push iSection_iSection14 to stack to add innert controls
	[containerStack push:iSection_iSection14];
	BindableObject* DeriveDecl177 = [[BindableObject alloc] initWithValue: @"First Name"];
	[self.scope set:@"tmp644" variable:DeriveDecl177];
	BindableObject* DeriveDecl178 = [[BindableObject alloc] initWithValue: @"John"];
	[self.scope set:@"tmp643" variable:DeriveDecl178];
	
	[self.scope createInnerScope];
	//changing HumanResource_iItemEdit_HumanResource_iItemEdit14 arguments to an array
	
	NSMutableArray* arguments_HumanResource_iItemEdit_HumanResource_iItemEdit140 = [[NSMutableArray alloc] init];
	
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit140 addObject:(BindableObject*)[self.scope get: @"firstName"]];
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit140 addObject:(BindableObject*)[self.scope get: @"tmp643"]];
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit140 addObject:(BindableObject*)[self.scope get: @"tmp644"]];
	
	//initializing [varName] control
	HumanResource_iItemEdit* HumanResource_iItemEdit_HumanResource_iItemEdit14 = [[HumanResource_iItemEdit alloc] initialize:arguments_HumanResource_iItemEdit_HumanResource_iItemEdit140 container: [containerStack top]];
	//push HumanResource_iItemEdit_HumanResource_iItemEdit14 to stack to add innert controls
	[containerStack push:HumanResource_iItemEdit_HumanResource_iItemEdit14];
	
	//pop HumanResource_iItemEdit_HumanResource_iItemEdit14
	[containerStack pop];
	[HumanResource_iItemEdit_HumanResource_iItemEdit14 finilize];
	[[containerStack top] addBodyControl:HumanResource_iItemEdit_HumanResource_iItemEdit14];
	[self.scope exitScope];
	BindableObject* DeriveDecl179 = [[BindableObject alloc] initWithValue: @"Last Name"];
	[self.scope set:@"tmp646" variable:DeriveDecl179];
	BindableObject* DeriveDecl180 = [[BindableObject alloc] initWithValue: @"Smith"];
	[self.scope set:@"tmp645" variable:DeriveDecl180];
	
	[self.scope createInnerScope];
	//changing HumanResource_iItemEdit_HumanResource_iItemEdit15 arguments to an array
	
	NSMutableArray* arguments_HumanResource_iItemEdit_HumanResource_iItemEdit150 = [[NSMutableArray alloc] init];
	
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit150 addObject:(BindableObject*)[self.scope get: @"lastName"]];
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit150 addObject:(BindableObject*)[self.scope get: @"tmp645"]];
	[arguments_HumanResource_iItemEdit_HumanResource_iItemEdit150 addObject:(BindableObject*)[self.scope get: @"tmp646"]];
	
	//initializing [varName] control
	HumanResource_iItemEdit* HumanResource_iItemEdit_HumanResource_iItemEdit15 = [[HumanResource_iItemEdit alloc] initialize:arguments_HumanResource_iItemEdit_HumanResource_iItemEdit150 container: [containerStack top]];
	//push HumanResource_iItemEdit_HumanResource_iItemEdit15 to stack to add innert controls
	[containerStack push:HumanResource_iItemEdit_HumanResource_iItemEdit15];
	
	//pop HumanResource_iItemEdit_HumanResource_iItemEdit15
	[containerStack pop];
	[HumanResource_iItemEdit_HumanResource_iItemEdit15 finilize];
	[[containerStack top] addBodyControl:HumanResource_iItemEdit_HumanResource_iItemEdit15];
	[self.scope exitScope];
	BindableObject* DeriveDecl181 = [[BindableObject alloc] initWithValue: @"Age"];
	[self.scope set:@"tmp648" variable:DeriveDecl181];
	BindableObject* DeriveDecl182 = [[BindableObject alloc] initWithValue: @"25"];
	[self.scope set:@"tmp647" variable:DeriveDecl182];
	
	[self.scope createInnerScope];
	//changing HumanResource_iItemNum_HumanResource_iItemNum7 arguments to an array
	
	NSMutableArray* arguments_HumanResource_iItemNum_HumanResource_iItemNum70 = [[NSMutableArray alloc] init];
	
	[arguments_HumanResource_iItemNum_HumanResource_iItemNum70 addObject:(BindableObject*)[self.scope get: @"age"]];
	[arguments_HumanResource_iItemNum_HumanResource_iItemNum70 addObject:(BindableObject*)[self.scope get: @"tmp647"]];
	[arguments_HumanResource_iItemNum_HumanResource_iItemNum70 addObject:(BindableObject*)[self.scope get: @"tmp648"]];
	
	//initializing [varName] control
	HumanResource_iItemNum* HumanResource_iItemNum_HumanResource_iItemNum7 = [[HumanResource_iItemNum alloc] initialize:arguments_HumanResource_iItemNum_HumanResource_iItemNum70 container: [containerStack top]];
	//push HumanResource_iItemNum_HumanResource_iItemNum7 to stack to add innert controls
	[containerStack push:HumanResource_iItemNum_HumanResource_iItemNum7];
	
	//pop HumanResource_iItemNum_HumanResource_iItemNum7
	[containerStack pop];
	[HumanResource_iItemNum_HumanResource_iItemNum7 finilize];
	[[containerStack top] addBodyControl:HumanResource_iItemNum_HumanResource_iItemNum7];
	[self.scope exitScope];
	
	//pop iSection_iSection14
	[containerStack pop];
	[iSection_iSection14 finilize];
	[[containerStack top] addBodyControl:iSection_iSection14];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing iSection_iSection15 arguments to an array
	
	NSMutableArray* arguments_iSection_iSection150 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_iSection150 addObject:(BindableObject*)[self.scope get: @"sectionTwoTitle"]];
	[arguments_iSection_iSection150 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_sectionStyle alloc] initialize]]];
	
	//initializing [varName] control
	iSection* iSection_iSection15 = [[iSection alloc] initialize:arguments_iSection_iSection150 container: [containerStack top]];
	//push iSection_iSection15 to stack to add innert controls
	[containerStack push:iSection_iSection15];
	BindableObject* DeriveDecl183 = [[BindableObject alloc] initWithValue: @"Newspaper"];
	[self.scope set:@"tmp649" variable:DeriveDecl183];
	
	[self.scope createInnerScope];
	//changing HumanResource_iItemCheck_HumanResource_iItemCheck7 arguments to an array
	
	NSMutableArray* arguments_HumanResource_iItemCheck_HumanResource_iItemCheck70 = [[NSMutableArray alloc] init];
	
	[arguments_HumanResource_iItemCheck_HumanResource_iItemCheck70 addObject:(BindableObject*)[self.scope get: @"newspaper"]];
	[arguments_HumanResource_iItemCheck_HumanResource_iItemCheck70 addObject:(BindableObject*)[self.scope get: @"tmp649"]];
	
	//initializing [varName] control
	HumanResource_iItemCheck* HumanResource_iItemCheck_HumanResource_iItemCheck7 = [[HumanResource_iItemCheck alloc] initialize:arguments_HumanResource_iItemCheck_HumanResource_iItemCheck70 container: [containerStack top]];
	//push HumanResource_iItemCheck_HumanResource_iItemCheck7 to stack to add innert controls
	[containerStack push:HumanResource_iItemCheck_HumanResource_iItemCheck7];
	
	//pop HumanResource_iItemCheck_HumanResource_iItemCheck7
	[containerStack pop];
	[HumanResource_iItemCheck_HumanResource_iItemCheck7 finilize];
	[[containerStack top] addBodyControl:HumanResource_iItemCheck_HumanResource_iItemCheck7];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing iItem_iItem31 arguments to an array
	
	NSMutableArray* arguments_iItem_iItem310 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_iItem310 addObject:(BindableObject*)[self.scope get: @"sponsor"]];
	[arguments_iItem_iItem310 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadstyle_itemStyle alloc] initialize]]];
	
	//initializing [varName] control
	iItem* iItem_iItem31 = [[iItem alloc] initialize:arguments_iItem_iItem310 container: [containerStack top]];
	//push iItem_iItem31 to stack to add innert controls
	[containerStack push:iItem_iItem31];
	
	//pop iItem_iItem31
	[containerStack pop];
	[iItem_iItem31 finilize];
	[[containerStack top] addBodyControl:iItem_iItem31];
	[self.scope exitScope];
	
	//pop iSection_iSection15
	[containerStack pop];
	[iSection_iSection15 finilize];
	[[containerStack top] addBodyControl:iSection_iSection15];
	[self.scope exitScope];
	
	//pop iTable_iTable7
	[containerStack pop];
	[iTable_iTable7 finilize];
	[[containerStack top] addBodyControl:iTable_iTable7];
	[self.scope exitScope];
	 
	//pop screen 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
