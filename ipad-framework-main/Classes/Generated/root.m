

#import "root.h"
#import "root_Control1303.h"
#import "TabSample_textBoxStyleNextLine.h"
#import "iTextBox.h"
#import "TabSample_Person.h"
#import "root.h"

@implementation root
@synthesize window;
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int a_12090 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred23 = [[BindableObject alloc] initWithValue: [[TabSample_Person alloc] initWithValues:[[NSArray alloc] initWithObjects:[[NameValue alloc] initWithName:@"FirstName" value:@"Nami"],[[NameValue alloc] initWithName:@"LastName" value:@"Nasserazad"],[[NameValue alloc] initWithName:@"Age" value:[[NSNumber alloc] initWithFloat:28]], nil]]];
	[self.scope set:@"p" variable:VarDeclInferred23];
	BindableObject* VarDeclInferred24 = [[BindableObject alloc] initWithValue: [[NSMutableArray alloc] initWithObjects:[[BindableObject alloc] initWithValue:@"Nami"],[[BindableObject alloc] initWithValue:@"Nima"],[[BindableObject alloc] initWithValue:@"Hassan"], nil]];
	[self.scope set:@"myArray" variable:VarDeclInferred24];
	
	for (BindableObject* str in [(BindableObject*)[self.scope get: @"myArray"] value])
	{
		[self.scope createInnerScope];
		[self.scope set:@"str" variable:str];
		
		[self.scope createInnerScope];
		//changing root_Control1303_root_Control13030 arguments to an array
		
		NSMutableArray* arguments_root_Control1303_root_Control130300 = [[NSMutableArray alloc] init];
		
		
		//initializing [varName] control
		root_Control1303* root_Control1303_root_Control13030 = [[root_Control1303 alloc] initialize:arguments_root_Control1303_root_Control130300 container: [containerStack top]];
		//push root_Control1303_root_Control13030 to stack to add innert controls
		[containerStack push:root_Control1303_root_Control13030];
		
		//pop root_Control1303_root_Control13030
		[containerStack pop];
		[root_Control1303_root_Control13030 finilize];
		[[containerStack top] addBodyControl:root_Control1303_root_Control13030];
		[self.scope exitScope];
		
		[self.scope exitScope];
	}
	 
	//pop screen 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
