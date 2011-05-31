

#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "NSSelector.h"	
#import "iCustomControl.h"
#import "Utilities.h"
#import "Scope.h"
#import "iView.h"
#import "Callback.h"
#import "StylingManager.h"
#import "UIStyle.h"
#import "BindableObject.h"
#import "Object.h"
#import "NameValue.h"
#import "TypedValue.h"


@interface TabSample_Person : Object {
	BindableObject* FirstName; 		
	BindableObject* LastName; 		
	BindableObject* Age; 		
	
}	
@property (retain) BindableObject* FirstName; 		
                                      
@property (retain) BindableObject* LastName; 		
                                      
@property (assign) BindableObject* Age; 		
                                      

-(TabSample_Person*) initialize;
-(TabSample_Person*) initWithValues: (NSArray*)nvs;
 @end
