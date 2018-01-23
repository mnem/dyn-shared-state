//
//  Bar.m
//  dynamic-using-static
//
//  Created by David Wagner on 23/01/2018.
//  Copyright © 2018 David Wagner. All rights reserved.
//

#import "Bar.h"
#import "static_with_global_state.h"

@interface Bar ()

@property (nonatomic, nonnull, strong) Foo *foo;

@end

@implementation Bar

- (instancetype)init
{
    self = [super init];
    if (self) {
        _foo = [[Foo alloc] initWithName:@"called-from-bar"];
        [Foo setStaticInteger:12345];
    }
    return self;
}

- (NSString *)description {
    return [self.foo description];
}

@end
