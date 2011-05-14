

@class mobl_ipadui_switchStyle;
@class mobl_ipadui_textBoxStyle;
@class mobl_ipadui_labelStyle;
@class mobl_ipadui_leftButtonStyle;
@class mobl_ipadui_rightButtonStyle;
@class mobl_ipadui_headerStyle;
@class mobl_ipadui_itemStyle;
@class mobl_ipadui_sectionStyle;
@class mobl_ipadui_tableStyle;
@class mobl_ipadui_buttonStyle;  


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
@interface mobl_ipadui_buttonStyle : UIStyle {
	
}

@end

@implementation mobl_ipadui_buttonStyle

-(UIStyle*) initialize
{
	[super initialize];
	
	self.left = -1;
	self.top = -1;
	self.width = 72;
	self.height = 37;
	self.place = @"nextline";
	self.anchor = @"left";
	self.margin_left = 5;
	self.margin_right = 5;
	self.margin_top = 5;
	self.margin_bottom = 5;
	return self;
}
@end


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
@interface mobl_ipadui_tableStyle : UIStyle {
	
}

@end

@implementation mobl_ipadui_tableStyle

-(UIStyle*) initialize
{
	[super initialize];
	
	self.left = -1;
	self.top = -1;
	self.width = 768;
	self.height = 1004;
	self.place = @"nextline";
	self.anchor = @"left-right";
	self.margin_left = 0;
	self.margin_right = 0;
	self.margin_top = 0;
	self.margin_bottom = 0;
	return self;
}
@end


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
@interface mobl_ipadui_sectionStyle : UIStyle {
	
}

@end

@implementation mobl_ipadui_sectionStyle

-(UIStyle*) initialize
{
	[super initialize];
	
	self.left = -1;
	self.top = -1;
	self.width = -1;
	self.height = -1;
	self.place = @"nextline";
	self.anchor = @"left-right";
	self.margin_left = 0;
	self.margin_right = 0;
	self.margin_top = 0;
	self.margin_bottom = 0;
	return self;
}
@end


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
@interface mobl_ipadui_itemStyle : UIStyle {
	
}

@end

@implementation mobl_ipadui_itemStyle

-(UIStyle*) initialize
{
	[super initialize];
	
	self.left = -1;
	self.top = -1;
	self.width = -1;
	self.height = -1;
	self.place = @"nextline";
	self.anchor = @"left-right";
	self.margin_left = 0;
	self.margin_right = 0;
	self.margin_top = 0;
	self.margin_bottom = 0;
	return self;
}
@end


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
@interface mobl_ipadui_headerStyle : UIStyle {
	
}

@end

@implementation mobl_ipadui_headerStyle

-(UIStyle*) initialize
{
	[super initialize];
	
	self.left = -1;
	self.top = -1;
	self.width = -1;
	self.height = -1;
	self.place = @"nextline";
	self.anchor = @"left-right";
	self.margin_left = 0;
	self.margin_right = 0;
	self.margin_top = 0;
	self.margin_bottom = 0;
	return self;
}
@end


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
@interface mobl_ipadui_rightButtonStyle : UIStyle {
	
}

@end

@implementation mobl_ipadui_rightButtonStyle

-(UIStyle*) initialize
{
	[super initialize];
	
	self.left = -1;
	self.top = -1;
	self.width = 72;
	self.height = 37;
	self.place = @"nextline";
	self.anchor = @"right";
	self.margin_left = 5;
	self.margin_right = 5;
	self.margin_top = 5;
	self.margin_bottom = 5;
	return self;
}
@end


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
@interface mobl_ipadui_leftButtonStyle : UIStyle {
	
}

@end

@implementation mobl_ipadui_leftButtonStyle

-(UIStyle*) initialize
{
	[super initialize];
	
	self.left = -1;
	self.top = -1;
	self.width = 72;
	self.height = 37;
	self.place = @"nextline";
	self.anchor = @"left";
	self.margin_left = 5;
	self.margin_right = 5;
	self.margin_top = 5;
	self.margin_bottom = 5;
	return self;
}
@end


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
@interface mobl_ipadui_labelStyle : UIStyle {
	
}

@end

@implementation mobl_ipadui_labelStyle

-(UIStyle*) initialize
{
	[super initialize];
	
	self.left = -1;
	self.top = -1;
	self.width = 90;
	self.height = 21;
	self.place = @"nextline";
	self.anchor = @"left";
	self.margin_left = 5;
	self.margin_right = 5;
	self.margin_top = 5;
	self.margin_bottom = 5;
	return self;
}
@end


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
@interface mobl_ipadui_textBoxStyle : UIStyle {
	NSString* border_style;
	
}

@property ( retain ) NSString* border_style;
@end

@implementation mobl_ipadui_textBoxStyle
@synthesize border_style ;
-(UIStyle*) initialize
{
	[super initialize];
	
	self.left = -1;
	self.top = -1;
	self.width = 100;
	self.height = 31;
	self.place = @"currentline";
	self.anchor = @"left-right";
	self.margin_left = 5;
	self.margin_right = 5;
	self.margin_top = 5;
	self.margin_bottom = 5;
	self.border_style = @"bordered";
	return self;
}
@end


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
@interface mobl_ipadui_switchStyle : UIStyle {
	
}

@end

@implementation mobl_ipadui_switchStyle

-(UIStyle*) initialize
{
	[super initialize];
	
	self.left = -1;
	self.top = -1;
	self.width = 94;
	self.height = 27;
	self.place = @"currentline";
	self.anchor = @"right";
	self.margin_left = 5;
	self.margin_right = 5;
	self.margin_top = 5;
	self.margin_bottom = 5;
	return self;
}
@end

