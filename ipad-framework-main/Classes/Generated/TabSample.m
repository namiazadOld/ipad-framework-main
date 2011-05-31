

#import "TabSample.h";
@implementation TabSample
+(id) GetTuple  
{
	id t = [Utilities Tuple:[[NSArray alloc] initWithObjects:[[TypedValue alloc] initWithType:@"Ref" value:@"Hello"],[[TypedValue alloc] initWithType:@"Num" value:[[NSNumber alloc] initWithFloat:5]], nil]];
	[(BindableObject*)[t _1] setValue:@"Bye"];
	return t;
}
+(NSString*) GetString  
{
	return @"Nami";
}

@end
