//
//  IPassGenAppDelegate.m
//  IPassGen
//
//  Created by Daniel Passos on 21/03/09.
//  Copyright Dclick 2009. All rights reserved.
//

#import "IPassGenAppDelegate.h"
#import "IPassGenViewController.h"

@implementation IPassGenAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
