//
//  iDateTimePicker.h
//  ipad-framework-main
//
//  Created by Nami on 5/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iBaseControl.h"


@interface iDatePicker : iBaseControl {
	UIDatePicker* datePicker;
	
	BindableObject* dateBindableObject;
	BindableObject* showTimeBindableObject;
}

@property (nonatomic, retain) UIDatePicker* datePicker;
@property (nonatomic, retain) NSDate* date;
@property (nonatomic, assign) BOOL showTime;
@property (nonatomic, retain) BindableObject* dateBindableObject;
@property (nonatomic, retain) BindableObject* showTimeBindableObject;


@end
