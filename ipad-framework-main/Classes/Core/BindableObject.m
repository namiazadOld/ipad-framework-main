//
//  BindableObject.m
//  iPadFramework
//
//  Created by Nami on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BindableObject.h"


@implementation BindableObject
@synthesize value, listeners, numValue, boolValue, type, evaluator;

-(void) initFields:(ValueType)_type
{
	if (listeners == nil)
	{
		listeners = [[NSMutableArray alloc] init];
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

-(void) addListener: (id) listener
{
	[self.listeners addObject:listener];
}

-(void) notifyListeners
{
	for (id<Notifiable> control in self.listeners)
	{
		[control changeNotification:self];
	}
}

-(void) setValue:(id)_value
{
	@synchronized(self)
	{
		[self initFields:Ref];
		value = _value;
		[self notifyListeners];
	}
}

-(void) setNumValue:(float)_value
{
	@synchronized(self)
	{
		[self initFields:Num];
		numValue = _value;
		[self notifyListeners];
	}
}

-(void) setBoolValue:(BOOL)_value
{
	@synchronized(self)
	{
		[self initFields:Bool];
		boolValue = _value;
		[self notifyListeners];
	}
}

-(void) changeNotification:(BindableObject*) sender
{
	if (self.evaluator == NULL)
		return;
	
	switch (sender.type) {
		case Num:
			[self setNumValue:[self.evaluator evaluateNum]];
			break;
		case Bool:
			[self setBoolValue:[self.evaluator evaluateBool]];
			break;
		case Ref:
			[self setValue:[self.evaluator evaluate]];
			break;			
		default:
			break;
	}
}

@end
