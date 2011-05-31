

#import "root_EntireInfo1.h"
#import "root_DetailInfo1.h"
#import "root_GeneralInfo1.h"
#import "root_EntireInfo1.h"

@implementation root_EntireInfo1
-(iBaseControl*) initialize: (NSMutableArray*)arguments container: (iBaseControl*)parent
{
	[super initialize:arguments container:parent];
	[self.scope createInnerScope];
	int a_3503 = -1;
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:parent];
	
	[self.scope createInnerScope];
	//changing root_GeneralInfo1_root_GeneralInfo10 arguments to an array
	
	NSMutableArray* arguments_root_GeneralInfo1_root_GeneralInfo100 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	root_GeneralInfo1* root_GeneralInfo1_root_GeneralInfo10 = [[root_GeneralInfo1 alloc] initialize:arguments_root_GeneralInfo1_root_GeneralInfo100 container: [containerStack top]];
	//push root_GeneralInfo1_root_GeneralInfo10 to stack to add innert controls
	[containerStack push:root_GeneralInfo1_root_GeneralInfo10];
	
	//pop root_GeneralInfo1_root_GeneralInfo10
	[containerStack pop];
	[root_GeneralInfo1_root_GeneralInfo10 finilize];
	[[containerStack top] addBodyControl:root_GeneralInfo1_root_GeneralInfo10];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	//changing root_DetailInfo1_root_DetailInfo10 arguments to an array
	
	NSMutableArray* arguments_root_DetailInfo1_root_DetailInfo100 = [[NSMutableArray alloc] init];
	
	
	//initializing [varName] control
	root_DetailInfo1* root_DetailInfo1_root_DetailInfo10 = [[root_DetailInfo1 alloc] initialize:arguments_root_DetailInfo1_root_DetailInfo100 container: [containerStack top]];
	//push root_DetailInfo1_root_DetailInfo10 to stack to add innert controls
	[containerStack push:root_DetailInfo1_root_DetailInfo10];
	
	//pop root_DetailInfo1_root_DetailInfo10
	[containerStack pop];
	[root_DetailInfo1_root_DetailInfo10 finilize];
	[[containerStack top] addBodyControl:root_DetailInfo1_root_DetailInfo10];
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
