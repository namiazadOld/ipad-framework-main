//
//  Utilities.h
//  iPadFramework
//
//  Created by Nami on 2/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BindableObject.h"
#import "iBaseControl.h"


@interface Utilities : NSObject {

}

+(void) ShowError: (id)sender title: (NSString*)title content: (NSString*)content;
+(void) AddControl:(iBaseControl*) widget ToContainer: (iBaseControl*) container;

@end
