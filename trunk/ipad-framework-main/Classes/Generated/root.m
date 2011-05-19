

#import "root.h"
#import "HumanResource_textBoxNextLineStyle.h"
#import "iTextBox.h"
#import "HumanResource_Person.h"
#import "root.h"

@implementation root
@synthesize window;
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int e_26303 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred29 = [[BindableObject alloc] initWithValue: [[HumanResource_Person alloc] initWithValues:[[NSArray alloc] initWithObjects:[[NameValue alloc] initWithName:@"FirstName" value:@"Nami"],[[NameValue alloc] initWithName:@"LastName" value:@"NasserAzad"],[[NameValue alloc] initWithName:@"Age" value:[[NSNumber alloc] initWithFloat:4 + 5]], nil]]];
	[self.scope set:@"p2" variable:VarDeclInferred29];
	BindableObject* DeriveDecl62 = [[BindableObject alloc] initWithValue: @"First Name"];
	[self.scope set:@"tmp302" variable:DeriveDecl62];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox21 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox210 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox210 addObject:[[(BindableObject*)[self.scope get: @"p2"] value] FirstName]];
	[arguments_iTextBox_iTextBox210 addObject:(BindableObject*)[self.scope get: @"tmp302"]];
	[arguments_iTextBox_iTextBox210 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox21 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox210 container: [containerStack top]];
	//push iTextBox_iTextBox21 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox21];
	
	//pop iTextBox_iTextBox21
	[containerStack pop];
	[iTextBox_iTextBox21 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox21];
	[self.scope exitScope];
	BindableObject* DeriveDecl63 = [[BindableObject alloc] initWithValue: @"First Name"];
	[self.scope set:@"tmp303" variable:DeriveDecl63];
	
	[self.scope createInnerScope];
	//changing iTextBox_iTextBox22 arguments to an array
	
	NSMutableArray* arguments_iTextBox_iTextBox220 = [[NSMutableArray alloc] init];
	
	[arguments_iTextBox_iTextBox220 addObject:[[(BindableObject*)[self.scope get: @"p2"] value] FirstName]];
	[arguments_iTextBox_iTextBox220 addObject:(BindableObject*)[self.scope get: @"tmp303"]];
	[arguments_iTextBox_iTextBox220 addObject:[[BindableObject alloc] initWithValue: [[HumanResource_textBoxNextLineStyle alloc] initialize]]];
	
	//initializing [varName] control
	iTextBox* iTextBox_iTextBox22 = [[iTextBox alloc] initialize:arguments_iTextBox_iTextBox220 container: [containerStack top]];
	//push iTextBox_iTextBox22 to stack to add innert controls
	[containerStack push:iTextBox_iTextBox22];
	
	//pop iTextBox_iTextBox22
	[containerStack pop];
	[iTextBox_iTextBox22 finilize];
	[[containerStack top] addBodyControl:iTextBox_iTextBox22];
	[self.scope exitScope];
	 
	//pop screen 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
