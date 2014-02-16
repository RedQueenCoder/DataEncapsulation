//
//  Demo.m
//  DataEncapsulation
//
//  Created by Janie Clayton-Hasz on 2/16/14.
//  Copyright (c) 2014 Third Impact Software. All rights reserved.
//

#import "Demo.h"

@interface Demo ()

// This is a privately available property
@property (strong, nonatomic) NSString *secondString;

@end

@implementation Demo{
    // This is an instance variable
    NSString *_thirdString;
}

- (id)init
{
    self = [super init];
    
    if (self) {
        // This is the backing instance variable from the first two string properties
        _firstString = @"This is my first string";
        _secondString = @"This is my second string";
        
        // This is the instance variable we declared above.
        _thirdString = @"This is my third string";
    }
    
    return self;
}

@end
