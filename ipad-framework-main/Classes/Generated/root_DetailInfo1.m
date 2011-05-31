

#import "root_DetailInfo1.h"
#import "TabSample_textBoxStyleNextLine.h"
#import "iNumField.h"
#import "root_DetailInfo1.h"

@implementation root_DetailInfo1
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int z_3502 = -1;
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:parent];
	BindableObject* DeriveDecl15 = [[BindableObject alloc] initWithValue: @"45"];
	[self.scope set:@"tmp73" variable:DeriveDecl15];
	
	[self.scope createInnerScope];
	//changing iNumField_iNumField1 arguments to an array
	
	NSMutableArray* arguments_iNumField_iNumField10 = [[NSMutableArray alloc] init];
	
	[arguments_iNumField_iNumField10 addObject:[[(BindableObject*)[self.scope get: @"p"] value] Age]];
	[arguments_iNumField_iNumField10 addObject:(BindableObject*)[self.scope get: @"tmp73"]];
	[arguments_iNumField_iNumField10 addObject:[[BindableObject alloc] initWithValue: [[TabSample_textBoxStyleNextLine alloc] initialize]]];
	
	//initializing [varName] control
	iNumField* iNumField_iNumField1 = [[iNumField alloc] initialize:arguments_iNumField_iNumField10 container: [containerStack top]];
	//push iNumField_iNumField1 to stack to add innert controls
	[containerStack push:iNumField_iNumField1];
	
	//pop iNumField_iNumField1
	[containerStack pop];
	[iNumField_iNumField1 finilize];
	[[containerStack top] addBodyControl:iNumField_iNumField1];
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
