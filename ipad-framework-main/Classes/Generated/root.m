

#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"	
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
#import "StylingManager.h"
#import "UIStyle.h"
#import "root.h"
#import "iTable.h"
#import "iSection.h"
#import "iItem.h"
#import "iButton.h"
#import "iTextBox.h"
#import "iNumField.h"
#import "iSwitch.h"
#import "iHeader.h"
#import "iRightButton.h"
#import "iLabel.h"

@implementation root
@synthesize window;
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int n_15947 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred36 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"firstName" variable:VarDeclInferred36];
	BindableObject* VarDeclInferred37 = [[BindableObject alloc] initWithValue: @""];
	[self.scope set:@"lastName" variable:VarDeclInferred37];
	BindableObject* VarDeclInferred38 = [[BindableObject alloc] initWithNumber: 25];
	[self.scope set:@"age" variable:VarDeclInferred38];
	BindableObject* VarDeclInferred39 = [[BindableObject alloc] initWithBool: NO];
	[self.scope set:@"newspaper" variable:VarDeclInferred39];
	BindableObject* VarDeclInferred40 = [[BindableObject alloc] initWithValue: @"Registeration Form"];
	[self.scope set:@"formTitle" variable:VarDeclInferred40];
	BindableObject* VarDeclInferred41 = [[BindableObject alloc] initWithValue: @"Make Invalid"];
	[self.scope set:@"makeInvalidTitle" variable:VarDeclInferred41];
	BindableObject* VarDeclInferred42 = [[BindableObject alloc] initWithValue: @"Personal Information"];
	[self.scope set:@"sectionOneTitle" variable:VarDeclInferred42];
	BindableObject* VarDeclInferred43 = [[BindableObject alloc] initWithValue: @"Registeration Information"];
	[self.scope set:@"sectionTwoTitle" variable:VarDeclInferred43];
	BindableObject* VarDeclInferred44 = [[BindableObject alloc] initWithValue: @"Sponsored by UNICEF"];
	[self.scope set:@"sponsor" variable:VarDeclInferred44];
	BindableObject* VarDecl4 = [[BindableObject alloc] initWithValue: [[NSMutableArray alloc] initWithObjects:[[BindableObject alloc] initWithNumber:1],[[BindableObject alloc] initWithNumber:2],[[BindableObject alloc] initWithNumber:3], nil]];
	[self.scope set:@"items" variable:VarDecl4];
	
	[self.scope createInnerScope];
	//changing iHeader_ControlCall126 arguments to an array
	
	NSMutableArray* arguments_iHeader_ControlCall1260 = [[NSMutableArray alloc] init];
	
	[arguments_iHeader_ControlCall1260 addObject:(BindableObject*)[self.scope get: @"formTitle"]];
	[arguments_iHeader_ControlCall1260 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadui_headerStyle alloc] initialize]]];
	
	//initializing [varName] control
	iHeader* iHeader_ControlCall126 = [[iHeader alloc] initialize:arguments_iHeader_ControlCall1260 container: [containerStack top]];
	//push iHeader_ControlCall126 to stack to add innert controls
	[containerStack push:iHeader_ControlCall126];
	BindableObject* DeriveDecl88 = [[BindableObject alloc] initWithValue: 
	                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[Callbacktmp355 alloc] initWithScope:self.scope]]
	                                                                           ];
	[self.scope set:@"tmp355" variable:DeriveDecl88];
	
	[self.scope createInnerScope];
	//changing iRightButton_ControlCall127 arguments to an array
	
	NSMutableArray* arguments_iRightButton_ControlCall1270 = [[NSMutableArray alloc] init];
	
	[arguments_iRightButton_ControlCall1270 addObject:(BindableObject*)[self.scope get: @"makeInvalidTitle"]];
	[arguments_iRightButton_ControlCall1270 addObject:(BindableObject*)[self.scope get: @"tmp355"]];
	[arguments_iRightButton_ControlCall1270 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadui_rightButtonStyle alloc] initialize]]];
	
	//initializing [varName] control
	iRightButton* iRightButton_ControlCall127 = [[iRightButton alloc] initialize:arguments_iRightButton_ControlCall1270 container: [containerStack top]];
	//push iRightButton_ControlCall127 to stack to add innert controls
	[containerStack push:iRightButton_ControlCall127];
	
	//pop iRightButton_ControlCall127
	[containerStack pop];
	[iRightButton_ControlCall127 finilize];
	[[containerStack top] addBodyControl:iRightButton_ControlCall127];
	[self.scope exitScope];
	
	//pop iHeader_ControlCall126
	[containerStack pop];
	[iHeader_ControlCall126 finilize];
	[[containerStack top] addBodyControl:iHeader_ControlCall126];
	[self.scope exitScope];
	BindableObject* DeriveDecl89 = [[BindableObject alloc] initWithValue: @"Form Title"];
	[self.scope set:@"tmp356" variable:DeriveDecl89];
	
	[self.scope createInnerScope];
	//changing iTextBox_ControlCall128 arguments to an array
	
	NSMutableArray* arguments_iTextBox_ControlCall1280 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_ControlCall1280 addObject:(BindableObject*)[self.scope get: @"formTitle"]];
	[arguments_iTextBox_ControlCall1280 addObject:(BindableObject*)[self.scope get: @"tmp356"]];
	[arguments_iTextBox_ControlCall1280 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_ControlCall128 = [[iTextBox alloc] initialize:arguments_iTextBox_ControlCall1280 container: [containerStack top]];
	//push iTextBox_ControlCall128 to stack to add innert controls
	[containerStack push:iTextBox_ControlCall128];
	
	//pop iTextBox_ControlCall128
	[containerStack pop];
	[iTextBox_ControlCall128 finilize];
	[[containerStack top] addBodyControl:iTextBox_ControlCall128];
	[self.scope exitScope];
	BindableObject* DeriveDecl90 = [[BindableObject alloc] initWithValue: @"Header Button"];
	[self.scope set:@"tmp357" variable:DeriveDecl90];
	
	[self.scope createInnerScope];
	//changing iTextBox_ControlCall129 arguments to an array
	
	NSMutableArray* arguments_iTextBox_ControlCall1290 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_ControlCall1290 addObject:(BindableObject*)[self.scope get: @"makeInvalidTitle"]];
	[arguments_iTextBox_ControlCall1290 addObject:(BindableObject*)[self.scope get: @"tmp357"]];
	[arguments_iTextBox_ControlCall1290 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_ControlCall129 = [[iTextBox alloc] initialize:arguments_iTextBox_ControlCall1290 container: [containerStack top]];
	//push iTextBox_ControlCall129 to stack to add innert controls
	[containerStack push:iTextBox_ControlCall129];
	
	//pop iTextBox_ControlCall129
	[containerStack pop];
	[iTextBox_ControlCall129 finilize];
	[[containerStack top] addBodyControl:iTextBox_ControlCall129];
	[self.scope exitScope];
	BindableObject* DeriveDecl91 = [[BindableObject alloc] initWithValue: @"First Name"];
	[self.scope set:@"tmp358" variable:DeriveDecl91];
	
	[self.scope createInnerScope];
	//changing iTextBox_ControlCall130 arguments to an array
	
	NSMutableArray* arguments_iTextBox_ControlCall1300 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_ControlCall1300 addObject:(BindableObject*)[self.scope get: @"firstName"]];
	[arguments_iTextBox_ControlCall1300 addObject:(BindableObject*)[self.scope get: @"tmp358"]];
	[arguments_iTextBox_ControlCall1300 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_ControlCall130 = [[iTextBox alloc] initialize:arguments_iTextBox_ControlCall1300 container: [containerStack top]];
	//push iTextBox_ControlCall130 to stack to add innert controls
	[containerStack push:iTextBox_ControlCall130];
	
	//pop iTextBox_ControlCall130
	[containerStack pop];
	[iTextBox_ControlCall130 finilize];
	[[containerStack top] addBodyControl:iTextBox_ControlCall130];
	[self.scope exitScope];
	BindableObject* DeriveDecl92 = [[BindableObject alloc] initWithValue: @"Last Name"];
	[self.scope set:@"tmp359" variable:DeriveDecl92];
	
	[self.scope createInnerScope];
	//changing iTextBox_ControlCall131 arguments to an array
	
	NSMutableArray* arguments_iTextBox_ControlCall1310 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_ControlCall1310 addObject:(BindableObject*)[self.scope get: @"lastName"]];
	[arguments_iTextBox_ControlCall1310 addObject:(BindableObject*)[self.scope get: @"tmp359"]];
	[arguments_iTextBox_ControlCall1310 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_ControlCall131 = [[iTextBox alloc] initialize:arguments_iTextBox_ControlCall1310 container: [containerStack top]];
	//push iTextBox_ControlCall131 to stack to add innert controls
	[containerStack push:iTextBox_ControlCall131];
	
	//pop iTextBox_ControlCall131
	[containerStack pop];
	[iTextBox_ControlCall131 finilize];
	[[containerStack top] addBodyControl:iTextBox_ControlCall131];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing iSwitch_ControlCall132 arguments to an array
	
	NSMutableArray* arguments_iSwitch_ControlCall1320 = [[NSMutableArray alloc] init];
	
	[arguments_iSwitch_ControlCall1320 addObject:(BindableObject*)[self.scope get: @"newspaper"]];
	[arguments_iSwitch_ControlCall1320 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_switchNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iSwitch* iSwitch_ControlCall132 = [[iSwitch alloc] initialize:arguments_iSwitch_ControlCall1320 container: [containerStack top]];
	//push iSwitch_ControlCall132 to stack to add innert controls
	[containerStack push:iSwitch_ControlCall132];
	
	//pop iSwitch_ControlCall132
	[containerStack pop];
	[iSwitch_ControlCall132 finilize];
	[[containerStack top] addBodyControl:iSwitch_ControlCall132];
	[self.scope exitScope];
	BindableObject* DeriveDecl93 = [[BindableObject alloc] initWithValue: @"Age"];
	[self.scope set:@"tmp361" variable:DeriveDecl93];
	
	[self.scope createInnerScope];
	//changing iNumField_ControlCall133 arguments to an array
	
	NSMutableArray* arguments_iNumField_ControlCall1330 = [[NSMutableArray alloc] init];
	
	[arguments_iNumField_ControlCall1330 addObject:(BindableObject*)[self.scope get: @"age"]];
	[arguments_iNumField_ControlCall1330 addObject:(BindableObject*)[self.scope get: @"tmp361"]];
	[arguments_iNumField_ControlCall1330 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadui_textBoxStyle alloc] initialize]]];
	
	//initializing [varName] control
	iNumField* iNumField_ControlCall133 = [[iNumField alloc] initialize:arguments_iNumField_ControlCall1330 container: [containerStack top]];
	//push iNumField_ControlCall133 to stack to add innert controls
	[containerStack push:iNumField_ControlCall133];
	
	//pop iNumField_ControlCall133
	[containerStack pop];
	[iNumField_ControlCall133 finilize];
	[[containerStack top] addBodyControl:iNumField_ControlCall133];
	[self.scope exitScope];
	BindableObject* DeriveDecl94 = [[BindableObject alloc] initWithValue: @"Sponsor"];
	[self.scope set:@"tmp362" variable:DeriveDecl94];
	
	[self.scope createInnerScope];
	//changing iTextBox_ControlCall134 arguments to an array
	
	NSMutableArray* arguments_iTextBox_ControlCall1340 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_ControlCall1340 addObject:(BindableObject*)[self.scope get: @"sponsor"]];
	[arguments_iTextBox_ControlCall1340 addObject:(BindableObject*)[self.scope get: @"tmp362"]];
	[arguments_iTextBox_ControlCall1340 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_ControlCall134 = [[iTextBox alloc] initialize:arguments_iTextBox_ControlCall1340 container: [containerStack top]];
	//push iTextBox_ControlCall134 to stack to add innert controls
	[containerStack push:iTextBox_ControlCall134];
	
	//pop iTextBox_ControlCall134
	[containerStack pop];
	[iTextBox_ControlCall134 finilize];
	[[containerStack top] addBodyControl:iTextBox_ControlCall134];
	[self.scope exitScope];
	BindableObject* DeriveDecl95 = [[BindableObject alloc] initWithValue: @"Section one title"];
	[self.scope set:@"tmp363" variable:DeriveDecl95];
	
	[self.scope createInnerScope];
	//changing iTextBox_ControlCall135 arguments to an array
	
	NSMutableArray* arguments_iTextBox_ControlCall1350 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_ControlCall1350 addObject:(BindableObject*)[self.scope get: @"sectionOneTitle"]];
	[arguments_iTextBox_ControlCall1350 addObject:(BindableObject*)[self.scope get: @"tmp363"]];
	[arguments_iTextBox_ControlCall1350 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_ControlCall135 = [[iTextBox alloc] initialize:arguments_iTextBox_ControlCall1350 container: [containerStack top]];
	//push iTextBox_ControlCall135 to stack to add innert controls
	[containerStack push:iTextBox_ControlCall135];
	
	//pop iTextBox_ControlCall135
	[containerStack pop];
	[iTextBox_ControlCall135 finilize];
	[[containerStack top] addBodyControl:iTextBox_ControlCall135];
	[self.scope exitScope];
	
	for (BindableObject* item in [(BindableObject*)[self.scope get: @"items"] value])
	{
		[self.scope createInnerScope];
		[self.scope set:@"item" variable:item];
		BindableObject* DeriveDecl96 = [[BindableObject alloc] initWithValue: 
		                                                                           [[NSSelector alloc] initWithSelector:@selector(action:) target:[[Callbacktmp365 alloc] initWithScope:self.scope]]
		                                                                           ];
		[self.scope set:@"tmp365" variable:DeriveDecl96];
		BindableObject* DeriveDecl97 = [[BindableObject alloc] initWithValue: @"Age"];
		[self.scope set:@"tmp364" variable:DeriveDecl97];
		
		[self.scope createInnerScope];
		//changing iButton_ControlCall136 arguments to an array
		
		NSMutableArray* arguments_iButton_ControlCall1360 = [[NSMutableArray alloc] init];
		
		[arguments_iButton_ControlCall1360 addObject:(BindableObject*)[self.scope get: @"tmp364"]];
		[arguments_iButton_ControlCall1360 addObject:(BindableObject*)[self.scope get: @"tmp365"]];
		[arguments_iButton_ControlCall1360 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadui_buttonStyle alloc] initialize]]];
		
		//initializing [varName] control
		iButton* iButton_ControlCall136 = [[iButton alloc] initialize:arguments_iButton_ControlCall1360 container: [containerStack top]];
		//push iButton_ControlCall136 to stack to add innert controls
		[containerStack push:iButton_ControlCall136];
		
		//pop iButton_ControlCall136
		[containerStack pop];
		[iButton_ControlCall136 finilize];
		[[containerStack top] addBodyControl:iButton_ControlCall136];
		[self.scope exitScope];
		
		[self.scope exitScope];
	}
	
	[self.scope createInnerScope];
	//changing iTable_ControlCall137 arguments to an array
	
	NSMutableArray* arguments_iTable_ControlCall1370 = [[NSMutableArray alloc] init];
	
	[arguments_iTable_ControlCall1370 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadui_tableStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTable* iTable_ControlCall137 = [[iTable alloc] initialize:arguments_iTable_ControlCall1370 container: [containerStack top]];
	//push iTable_ControlCall137 to stack to add innert controls
	[containerStack push:iTable_ControlCall137];
	
	[self.scope createInnerScope];
	//changing iSection_ControlCall138 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall1380 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall1380 addObject:(BindableObject*)[self.scope get: @"sectionOneTitle"]];
	[arguments_iSection_ControlCall1380 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadui_sectionStyle alloc] initialize]]];
	
	//initializing [varName] control
	iSection* iSection_ControlCall138 = [[iSection alloc] initialize:arguments_iSection_ControlCall1380 container: [containerStack top]];
	//push iSection_ControlCall138 to stack to add innert controls
	[containerStack push:iSection_ControlCall138];
	BindableObject* DeriveDecl98 = [[BindableObject alloc] initWithValue: @"First Name"];
	[self.scope set:@"tmp367" variable:DeriveDecl98];
	BindableObject* DeriveDecl99 = [[BindableObject alloc] initWithValue: @"John"];
	[self.scope set:@"tmp366" variable:DeriveDecl99];
	
	[self.scope createInnerScope];
	//changing iItemEdit_ControlCall139 arguments to an array
	
	NSMutableArray* arguments_iItemEdit_ControlCall1390 = [[NSMutableArray alloc] init];
	
	[arguments_iItemEdit_ControlCall1390 addObject:(BindableObject*)[self.scope get: @"firstName"]];
	[arguments_iItemEdit_ControlCall1390 addObject:(BindableObject*)[self.scope get: @"tmp366"]];
	[arguments_iItemEdit_ControlCall1390 addObject:(BindableObject*)[self.scope get: @"tmp367"]];
	
	//initializing [varName] control
	iItemEdit* iItemEdit_ControlCall139 = [[iItemEdit alloc] initialize:arguments_iItemEdit_ControlCall1390 container: [containerStack top]];
	//push iItemEdit_ControlCall139 to stack to add innert controls
	[containerStack push:iItemEdit_ControlCall139];
	
	//pop iItemEdit_ControlCall139
	[containerStack pop];
	[iItemEdit_ControlCall139 finilize];
	[[containerStack top] addBodyControl:iItemEdit_ControlCall139];
	[self.scope exitScope];
	BindableObject* DeriveDecl100 = [[BindableObject alloc] initWithValue: @"Last Name"];
	[self.scope set:@"tmp369" variable:DeriveDecl100];
	BindableObject* DeriveDecl101 = [[BindableObject alloc] initWithValue: @"Smith"];
	[self.scope set:@"tmp368" variable:DeriveDecl101];
	
	[self.scope createInnerScope];
	//changing iItemEdit_ControlCall140 arguments to an array
	
	NSMutableArray* arguments_iItemEdit_ControlCall1400 = [[NSMutableArray alloc] init];
	
	[arguments_iItemEdit_ControlCall1400 addObject:(BindableObject*)[self.scope get: @"lastName"]];
	[arguments_iItemEdit_ControlCall1400 addObject:(BindableObject*)[self.scope get: @"tmp368"]];
	[arguments_iItemEdit_ControlCall1400 addObject:(BindableObject*)[self.scope get: @"tmp369"]];
	
	//initializing [varName] control
	iItemEdit* iItemEdit_ControlCall140 = [[iItemEdit alloc] initialize:arguments_iItemEdit_ControlCall1400 container: [containerStack top]];
	//push iItemEdit_ControlCall140 to stack to add innert controls
	[containerStack push:iItemEdit_ControlCall140];
	
	//pop iItemEdit_ControlCall140
	[containerStack pop];
	[iItemEdit_ControlCall140 finilize];
	[[containerStack top] addBodyControl:iItemEdit_ControlCall140];
	[self.scope exitScope];
	BindableObject* DeriveDecl102 = [[BindableObject alloc] initWithValue: @"Age"];
	[self.scope set:@"tmp372" variable:DeriveDecl102];
	BindableObject* DeriveDecl103 = [[BindableObject alloc] initWithValue: @"25"];
	[self.scope set:@"tmp371" variable:DeriveDecl103];
	
	[self.scope createInnerScope];
	//changing iItemNum_ControlCall141 arguments to an array
	
	NSMutableArray* arguments_iItemNum_ControlCall1410 = [[NSMutableArray alloc] init];
	
	[arguments_iItemNum_ControlCall1410 addObject:(BindableObject*)[self.scope get: @"age"]];
	[arguments_iItemNum_ControlCall1410 addObject:(BindableObject*)[self.scope get: @"tmp371"]];
	[arguments_iItemNum_ControlCall1410 addObject:(BindableObject*)[self.scope get: @"tmp372"]];
	
	//initializing [varName] control
	iItemNum* iItemNum_ControlCall141 = [[iItemNum alloc] initialize:arguments_iItemNum_ControlCall1410 container: [containerStack top]];
	//push iItemNum_ControlCall141 to stack to add innert controls
	[containerStack push:iItemNum_ControlCall141];
	
	//pop iItemNum_ControlCall141
	[containerStack pop];
	[iItemNum_ControlCall141 finilize];
	[[containerStack top] addBodyControl:iItemNum_ControlCall141];
	[self.scope exitScope];
	
	//pop iSection_ControlCall138
	[containerStack pop];
	[iSection_ControlCall138 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall138];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing iSection_ControlCall142 arguments to an array
	
	NSMutableArray* arguments_iSection_ControlCall1420 = [[NSMutableArray alloc] init];
	
	[arguments_iSection_ControlCall1420 addObject:(BindableObject*)[self.scope get: @"sectionTwoTitle"]];
	[arguments_iSection_ControlCall1420 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadui_sectionStyle alloc] initialize]]];
	
	//initializing [varName] control
	iSection* iSection_ControlCall142 = [[iSection alloc] initialize:arguments_iSection_ControlCall1420 container: [containerStack top]];
	//push iSection_ControlCall142 to stack to add innert controls
	[containerStack push:iSection_ControlCall142];
	BindableObject* DeriveDecl104 = [[BindableObject alloc] initWithValue: @"Newspaper"];
	[self.scope set:@"tmp373" variable:DeriveDecl104];
	
	[self.scope createInnerScope];
	//changing iItemCheck_ControlCall143 arguments to an array
	
	NSMutableArray* arguments_iItemCheck_ControlCall1430 = [[NSMutableArray alloc] init];
	
	[arguments_iItemCheck_ControlCall1430 addObject:(BindableObject*)[self.scope get: @"newspaper"]];
	[arguments_iItemCheck_ControlCall1430 addObject:(BindableObject*)[self.scope get: @"tmp373"]];
	
	//initializing [varName] control
	iItemCheck* iItemCheck_ControlCall143 = [[iItemCheck alloc] initialize:arguments_iItemCheck_ControlCall1430 container: [containerStack top]];
	//push iItemCheck_ControlCall143 to stack to add innert controls
	[containerStack push:iItemCheck_ControlCall143];
	
	//pop iItemCheck_ControlCall143
	[containerStack pop];
	[iItemCheck_ControlCall143 finilize];
	[[containerStack top] addBodyControl:iItemCheck_ControlCall143];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing iItem_ControlCall144 arguments to an array
	
	NSMutableArray* arguments_iItem_ControlCall1440 = [[NSMutableArray alloc] init];
	
	[arguments_iItem_ControlCall1440 addObject:(BindableObject*)[self.scope get: @"sponsor"]];
	[arguments_iItem_ControlCall1440 addObject:[[BindableObject alloc] initWithValue: [[mobl_ipadui_itemStyle alloc] initialize]]];
	
	//initializing [varName] control
	iItem* iItem_ControlCall144 = [[iItem alloc] initialize:arguments_iItem_ControlCall1440 container: [containerStack top]];
	//push iItem_ControlCall144 to stack to add innert controls
	[containerStack push:iItem_ControlCall144];
	
	//pop iItem_ControlCall144
	[containerStack pop];
	[iItem_ControlCall144 finilize];
	[[containerStack top] addBodyControl:iItem_ControlCall144];
	[self.scope exitScope];
	
	//pop iSection_ControlCall142
	[containerStack pop];
	[iSection_ControlCall142 finilize];
	[[containerStack top] addBodyControl:iSection_ControlCall142];
	[self.scope exitScope];
	
	//pop iTable_ControlCall137
	[containerStack pop];
	[iTable_ControlCall137 finilize];
	[[containerStack top] addBodyControl:iTable_ControlCall137];
	[self.scope exitScope];
	 
	//pop screen 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
