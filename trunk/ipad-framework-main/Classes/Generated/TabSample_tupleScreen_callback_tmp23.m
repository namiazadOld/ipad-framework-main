

#import "TabSample_tupleScreen_callback_tmp23.h"

@implementation TabSample_tupleScreen_callback_tmp23
-(void) action: (id)sender
{
	[self.scope createInnerScope];
	[self.scope assignRef:@"str" value:@"Changed Sample String"];
	[(BindableObject*)[[(BindableObject*)[self.scope get: @"tuple2"] value] _1] setValue:@"Allah"];
	[self.scope assignNum:@"x" value:5];
	[self.scope exitScope];
}
@end
