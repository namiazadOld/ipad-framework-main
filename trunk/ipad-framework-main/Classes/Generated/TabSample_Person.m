

#import "TabSample_Person.h"
@implementation TabSample_Person

@synthesize FirstName,LastName,Age ;

-(TabSample_Person*) initialize
{
	self.FirstName = [[BindableObject alloc] initWithValue:@""];
	self.LastName = [[BindableObject alloc] initWithValue:@""];
	self.Age = [[BindableObject alloc] initWithNumber:0];
	return self;
}

		-(TabSample_Person*) initWithValues: (NSArray*)nvs
		{
		[super initWithValues:nvs];
		for (NameValue* nv in nvs)
		{
			
			if ([nv.name isEqualToString:@"FirstName"])
			{
				self.FirstName = [[BindableObject alloc] initWithValue:nv.value];			
			}
			
			
			if ([nv.name isEqualToString:@"LastName"])
			{
				self.LastName = [[BindableObject alloc] initWithValue:nv.value];			
			}
			
			
			if ([nv.name isEqualToString:@"Age"])
			{
				self.Age = [[BindableObject alloc] initWithNumber:[nv.value floatValue]];			
			}
			
		}
		return self;
		}
		
		
		@end
