//
//  IPassGenAppDelegate.h
//  IPassGen
//
//  Created by Daniel Passos on 21/03/09.
//  Copyright Dclick 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IPassGenViewController;

@interface IPassGenAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    IPassGenViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet IPassGenViewController *viewController;

@end

