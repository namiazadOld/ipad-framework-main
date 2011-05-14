//
//  iWidget.h
//  iPadFramework
//
//  Created by Nami on 1/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol iWidget<NSObject>

-(id <iWidget>) initialize: (NSMutableArray*)arguments container: (id<iWidget>)parent;
-(CGRect) getRecommendedFrame: (id<iWidget>) lastControl container:(id<iWidget>)parent;
-(CGRect) getFrame;
-(void) setFrame: (CGRect)frame;
-(UIView*) getView;
-(UIView*) getChildrenHolder;
-(void)orientationChanged:(UIInterfaceOrientation)toInterfaceOrientation ; 
-(void) addBodyControl:(id<iWidget>) widget;
-(void) finilize;
-(void) addTarget:(id)target  action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
-(void) parentChanged: (id<iWidget>)parent;
-(void) childUpdated: (id<iWidget>)child;

@end
