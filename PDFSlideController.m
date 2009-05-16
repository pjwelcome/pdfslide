//
//  PDFSlideController.m
//  PDFSlide
//
//  Created by David on 2009/05/16.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PDFSlideController.h"


@implementation PDFSlideController

/*
 * Control how the open dialog sheet will perform
 */
- (void)openPanelDidEnd:(NSOpenPanel *)openPanel
			 returnCode:(int)returnCode
			contextInfo:(void *)x {

	//was the OK Button pushed
	if (returnCode == NSOKButton) {
		NSLog(@"Open Dialog OK Button Pushed");
	}
}

/*
 * Show the open dialog button to allow the user to select a PDF file to open
 */
- (IBAction)openDocument:(id)sender {
	NSLog(@"Open Document Clicked");
	
	//Show the NSOpenPanel to open a PDF Document
	NSOpenPanel *openPanel = [NSOpenPanel openPanel];
	NSArray *fileTypes = [NSArray arrayWithObject:@"pdf"];
	
	//show the panel in a sheet
	[openPanel beginSheetForDirectory:nil
							 file:nil 
							types:fileTypes 
				   modalForWindow:window
					modalDelegate:self
					didEndSelector:@selector(openPanelDidEnd:returnCode:contextInfo:) 
					  contextInfo:NULL];
}

@end
