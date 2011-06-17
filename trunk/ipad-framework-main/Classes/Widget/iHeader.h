//
//  iHeader.h
//  iPadFramework
//
//  Created by Nami on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iBaseControl.h"
#import "iView.h"



@interface iHeader : iBaseControl {
	
	NSString* title;
	UIBarButtonItem* rightButton;
	UIBarButtonItem* leftButton;
	BindableObject* titleBindableObject;
	iView* container;
}

@property (retain) NSString* title;
@property (retain) UIBarButtonItem* rightButton;
@property (retain) UIBarButtonItem* leftButton;
@property (nonatomic, retain) BindableObject* titleBindableObject;
@property (nonatomic, retain) iView* container;

-(void) setButtons;

@end
