

#import "root.h"
#import "mobl_ipadstyle_labelStyle.h"
#import "iLabel.h"
#import "ControlVariable_ctr.h"
#import "mobl_ipadstyle_labelStyle.h"
#import "iLabel.h"
#import "ControlVariable_ctr.h"
#import "root.h"
#import "root_ControlVariable_ctr_ControlCall132.h"
#import "root_ControlVariable_ctr_ControlCall131.h"

@implementation root
@synthesize window;
-(iBaseControl*) render: (NSMutableArray*)arguments container: (iBaseControl*)parent elements: (iBaseControl*) elements
{
	[super render:arguments container:parent elements: elements];
	[self.scope createInnerScope];
	int c_27083 = -1;
	
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
	[window addSubview:[navController view]];
	[navController setNavigationBarHidden:YES];
	
	NSStack* containerStack = [[NSStack alloc]init];
	[containerStack push:self];
	BindableObject* VarDeclInferred102 = [[BindableObject alloc] initWithValue: @"Nami"];
	[self.scope set:@"firstName" variable:VarDeclInferred102];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments_ControlVariable_ctr_ControlVariable_ctr190 = [[NSMutableArray alloc] init];
	
	
	ControlVariable_ctr* ControlVariable_ctr_ControlVariable_ctr19 = [[ControlVariable_ctr alloc] init];
	[ControlVariable_ctr_ControlVariable_ctr19 render:arguments_ControlVariable_ctr_ControlVariable_ctr190 container: [containerStack top] elements:[[root_ControlVariable_ctr_ControlCall132 alloc] initWithElementOf:self.elementOf]];
	[ControlVariable_ctr_ControlVariable_ctr19 finilize];
	[[containerStack top] addBodyControl:ControlVariable_ctr_ControlVariable_ctr19];
	[self.scope exitScope];
	
	[self.scope createInnerScope];
	
	NSMutableArray* arguments_ControlVariable_ctr_ControlVariable_ctr200 = [[NSMutableArray alloc] init];
	
	
	ControlVariable_ctr* ControlVariable_ctr_ControlVariable_ctr20 = [[ControlVariable_ctr alloc] init];
	[ControlVariable_ctr_ControlVariable_ctr20 render:arguments_ControlVariable_ctr_ControlVariable_ctr200 container: [containerStack top] elements:[[root_ControlVariable_ctr_ControlCall132 alloc] initWithElementOf:self.elementOf]];
	[ControlVariable_ctr_ControlVariable_ctr20 finilize];
	[[containerStack top] addBodyControl:ControlVariable_ctr_ControlVariable_ctr20];
	[self.scope exitScope];
	 
	[containerStack pop]; 
	[self.scope exitScope];
	[StylingManager orderWidgets:self];
	return self;
}
@end
