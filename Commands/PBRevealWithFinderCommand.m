//
//  PBRevealWithFinder.m
//  GitX
//
//  Created by Tomasz Krasnyk on 10-11-27.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PBRevealWithFinderCommand.h"


@implementation PBRevealWithFinderCommand

- (id) initWithDocumentAbsolutePath:(NSString *) path {
	if (!path) {
		return nil;
	}
	
	if ((self = [super initWithDisplayName:@"Reveal in Finder" parameters:nil repository:nil])) {
		documentURL = [NSURL fileURLWithPath:path];
	}
	return self;
}

- (void) invoke {
	NSWorkspace *ws = [NSWorkspace sharedWorkspace];
	[ws selectFile:[documentURL absoluteString] inFileViewerRootedAtPath:nil];
}

@end
