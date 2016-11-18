//
//  AppDelegate.m
//  DuplicateNames
//
//  Created by Eduard Belianinik on 11/19/16.
//  Copyright © 2016 Eduard Belianinik. All rights reserved.
//

// Issue
@import AlgoliaSearch;
#import <Backendless-osx-SDK/Backendless.h>

// No Issue
//#import <Backendless-osx-SDK/Backendless.h>
//@import AlgoliaSearch;

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application

    FileService* fileService = [[FileService alloc] init]; // this class is from Backendless
    [fileService exists:@"foo"];

    AbstractQuery* query = [[AbstractQuery alloc] init]; // this class is from AlgoliaSearch
    [query setParameterWithName:@"foo" to:@"bar"];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
