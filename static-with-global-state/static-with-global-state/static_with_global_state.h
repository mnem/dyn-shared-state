//
//  static_with_global_state.h
//  static-with-global-state
//
//  Created by David Wagner on 23/01/2018.
//  Copyright © 2018 David Wagner. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Foo : NSObject

- (instancetype)initWithName:(NSString *)name;

+ (void)setStaticInteger:(NSInteger)value;

@end

NS_ASSUME_NONNULL_END
