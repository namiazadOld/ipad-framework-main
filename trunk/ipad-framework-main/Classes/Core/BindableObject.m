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

-(void) initFields:(ValueType)_type
{
	if (observers == nil)
	{
		observers = [[NSMutableArray alloc] init];
		type = _type;
	}
	
}


-(BindableObject*) initWithValue: (id)_value
{
	[self initFields:Ref];
	
	self.value = _value;

	return self;
}

-(BindableObject*) initWithNumber: (float)_value
{
	[self initFields:Num];
	
	numValue = _value;
	
	return self;
}

-(BindableObject*) initWithBool: (BOOL) _value
{
	[self initFields:Bool];
	
	boolValue = _value;
	
	return self;
}

-(BindableObject*) initWithNull
{
	[self initFields:Null];
	
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
		[self initFields:Ref];
		value = _value;
		[self notifyObservers];
	}
}

-(void) setNumValue:(float)_value
{
	@synchronized(self)
	{
		[self initFields:Num];
		numValue = _value;
		[self notifyObservers];
	}
}

-(void) setBoolValue:(BOOL)_value
{
	@synchronized(self)
	{
		[self initFields:Bool];
		boolValue = _value;
		[self notifyObservers];
	}
}

@end
