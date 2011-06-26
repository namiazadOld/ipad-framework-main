//
//  iDetailViewController.h
//  ipad-framework-main
//
//  Created by Nami on 6/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface iDetailViewController : UIViewController<UIPopoverControllerDelegate, UISplitViewControllerDelegate> {
	UIPopoverController *popoverController;
	UIToolbar *toolbar;
	UIBarButtonItem* barButtonItem;
}

@property (nonatomic, retain) UIPopoverController* popoverController;
@property (nonatomic, retain) UIToolbar* toolbar;
@property (nonatomic, retain) NSString* barTitle;
@property (nonatomic, retain) UIBarButtonItem* barButtonItem;


@end
