//
//  BindableObject.m
//  iPadFramework
//
//  Created by Nami on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BindableObject.h"


@implementation BindableObject
@synthesize value, observers, numValue, boolValue, type;

-(void) initFields
{
	observers = [[NSMutableArray alloc] init];
}


-(BindableObject*) initWithValue: (id)_value
{
	[self initFields];
	
	value = _value;
	type = Ref;
	
	return self;
}

-(BindableObject*) initWithNumber: (float)_value
{
	[self initFields];
	
	numValue = _value;
	type = Num;
	
	return self;
}

-(BindableObject*) initWithBool: (BOOL) _value
{
	[self initFields];
	
	boolValue = _value;
	type = Bool;
	
	return self;
}

-(BindableObject*) initWithNull
{
	[self initFields];

	type = Null;
	
	return self;
}

-(void) addUIObserver: (id) control
{
	[self.observers addObject:control];
}

-(void) notifyObservers
{
	for (id control in self.observers)
	{
		[control observeBindableValueChanged:self];
	}
}

-(void) setValue:(id)_value
{
	@synchronized(self)
	{
		value = _value;
		[self notifyObservers];
	}
}

-(void) setNumValue:(float)_value
{
	@synchronized(self)
	{
		numValue = _value;
		[self notifyObservers];
	}
}

-(void) setBoolValue:(BOOL)_value
{
	@synchronized(self)
	{
		boolValue = _value;
		[self notifyObservers];
	}
}

@end
