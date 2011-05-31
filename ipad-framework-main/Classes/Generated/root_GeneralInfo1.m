

#import "root_GeneralInfo1.h"
#import "TabSample_textBoxStyleNextLine.h"
#import "iTextBox.h"
#import "root_GeneralInfo1.h"

@implementation root_GeneralInfo1
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int y_3502 = -1;
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:parent];
	BindableObject* DeriveDecl13 = [[BindableObject alloc] initWithValue: @"John"];
	[self.scope set:@"tmp27" variable:DeriveDecl13];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox5 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox50 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox50 addObject:[[(BindableObject*)[self.scope get: @"p"] value] FirstName]];
	[arguments_iTextBox_iTextBox50 addObject:(BindableObject*)[self.scope get: @"tmp27"]];
	[arguments_iTextBox_iTextBox50 addObject:[[BindableObject alloc] initWithValue: [[TabSample_textBoxStyleNextLine alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox5 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox50 container: [containerStack top]];
	//push iTextBox_iTextBox5 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox5];
	
	//pop iTextBox_iTextBox5
	[containerStack pop];
	[iTextBox_iTextBox5 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox5];
	[self.scope exitScope];
	BindableObject* DeriveDecl14 = [[BindableObject alloc] initWithValue: @"Smith"];
	[self.scope set:@"tmp28" variable:DeriveDecl14];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox6 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox60 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox60 addObject:[[(BindableObject*)[self.scope get: @"p"] value] LastName]];
	[arguments_iTextBox_iTextBox60 addObject:(BindableObject*)[self.scope get: @"tmp28"]];
	[arguments_iTextBox_iTextBox60 addObject:[[BindableObject alloc] initWithValue: [[TabSample_textBoxStyleNextLine alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox6 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox60 container: [containerStack top]];
	//push iTextBox_iTextBox6 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox6];
	
	//pop iTextBox_iTextBox6
	[containerStack pop];
	[iTextBox_iTextBox6 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox6];
	[self.scope exitScope];
	 
	//pop screen
	[containerStack pop]; 
	[self.scope exitScope];
	return self;
}
-(void) viewDidLoad
{
	[Utilities setCurrentView:[self viewController]];
}
@end  
