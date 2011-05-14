//
//  iTableViewController.m
//  iPadFramework
//
//  Created by Nami on 1/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iTableViewController.h"
#import "iSection.h"
#import "iItem.h"


@implementation iTableViewController

@synthesize sectionList;

#pragma mark -
#pragma mark Initialization

#pragma mark -
#pragma mark View lifecycle

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
 	return [self.sectionList count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[self.sectionList objectAtIndex:section] itemList] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  
	iItem* item = [[[self.sectionList objectAtIndex:indexPath.section] itemList] objectAtIndex:indexPath.row];
	
	// Configure the cell...
	if (cell == nil)
		cell = item.cell;
	
	cell.textLabel.text = item.title;
	
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	
	return [[self.sectionList objectAtIndex:section] title];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Override to allow orientations other than the default portrait orientation.
    return YES;
}

@end

