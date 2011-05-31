

#import "root_callback_tmp25.h"
#import "TabSample_tupleScreen.h"

@implementation root_callback_tmp25
-(void) action: (id)sender
{
	[self.scope createInnerScope];
	
	//changing call arguments to an array
	
	NSMutableArray* arguments_TabSample_tupleScreen1 = [[NSMutableArray alloc] init];
	
	[arguments_TabSample_tupleScreen1 addObject:[[BindableObject alloc] initWithBool:NO]];
	[arguments_TabSample_tupleScreen1 addObject:[[BindableObject alloc] initWithValue:@"slide"]];
	
	TabSample_tupleScreen *screen_arguments_TabSample_tupleScreen10 = [[TabSample_tupleScreen alloc]init];
	[screen_arguments_TabSample_tupleScreen10 initialize:arguments_TabSample_tupleScreen1 container: NULL];
	[[[Utilities CurrentView] navigationController] pushViewController:[screen_arguments_TabSample_tupleScreen10 viewController] animated:YES];
	[screen_arguments_TabSample_tupleScreen10 release];
	[self.scope exitScope];
}
@end
