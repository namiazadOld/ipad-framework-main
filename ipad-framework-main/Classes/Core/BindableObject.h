//
//  BindableObject.h
//  iPadFramework
//
//  Created by Nami on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum 
{
	Null = 0,
	Num = 1,
	Bool = 2,
	Ref = 3
} ValueType;



@interface BindableObject : NSObject {
	id value;
	float numValue;
	BOOL boolValue;
	ValueType type;
	NSMutableArray* observers;
}

@property (assign, readwrite) id value;
@property (assign, readwrite) float numValue;
@property (assign, readwrite) BOOL boolValue;
@property (assign, readwrite) ValueType type;
@property (retain, readonly) NSMutableArray* observers;


-(void) initFields;
-(BindableObject*) initWithValue: (id)_value;
-(BindableObject*) initWithNumber: (float)_value;
-(BindableObject*) initWithBool: (BOOL) _value;
-(void) notifyObservers;
-(void) addUIObserver: (id)control;

@end
