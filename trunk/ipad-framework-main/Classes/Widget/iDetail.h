//
//  iDetail.h
//  ipad-framework-main
//
//  Created by Nami on 6/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iBaseControl.h"
#import "iDetailViewController.h"
#import "BindableObject.h"

@interface iDetail : iBaseControl {
	iDetailViewController* detailView;
	BindableObject* titleBindableObject;
}

@property (nonatomic, retain) iDetailViewController* detailView;
@property (nonatomic, retain) NSString* title;
@property (nonatomic, retain) BindableObject* titleBindableObject;

@end
