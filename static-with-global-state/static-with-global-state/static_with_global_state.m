//
//  static_with_global_state.m
//  static-with-global-state
//
//  Created by David Wagner on 23/01/2018.
//  Copyright © 2018 David Wagner. All rights reserved.
//

#import "static_with_global_state.h"

static NSString *dispatchOnceString;
static NSInteger staticInteger;

@interface Foo ()

@property (nonatomic, nonnull, copy) NSString *name;

@end

@implementation Foo

- (instancetype)init
{
    return [self initWithName:[[NSUUID UUID] UUIDString]];
}

- (instancetype)initWithName:(NSString *)name {
    NSParameterAssert(name);
    
    self = [super init];
    if (self) {
        _name = [name copy];
        
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            dispatchOnceString = [NSString stringWithFormat:@"Dispatch once created by %@", name];
        });
    }
    return self;
}

+ (void)setStaticInteger:(NSInteger)value {
    staticInteger = value;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"[%@ dispatchOnceString: %@, staticInteger: %ld, instance: %p, class: %p]",
            self.name,
            dispatchOnceString,
            (long)staticInteger,
            self,
            [self class]];
}

@end
