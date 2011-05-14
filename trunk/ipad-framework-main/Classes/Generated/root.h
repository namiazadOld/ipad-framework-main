/*
 *  root.h
 *  iPadFramework
 *
 *  Created by Nami on 1/28/11.
 *  Copyright 2011 __MyCompanyName__. All rights reserved.
 *
 */


#import <UIKit/UIKit.h>
#import "NSStack.h"
#import "NullObject.h"
#import "iWidget.h"
#import "iView.h"
#import "iTable.h"
#import "iSection.h"
#import "iItem.h"


@interface root : iView <iWidget>{
	UIWindow *window;
}

@property (nonatomic, retain) UIWindow *window;

@end
