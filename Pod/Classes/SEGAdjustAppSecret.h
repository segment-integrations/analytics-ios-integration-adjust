#import <Foundation/Foundation.h>


@interface SEGAdjustAppSecret : NSObject

@property (nonatomic, readonly) NSUInteger ID;
@property (nonatomic, readonly) NSUInteger info1;
@property (nonatomic, readonly) NSUInteger info2;
@property (nonatomic, readonly) NSUInteger info3;
@property (nonatomic, readonly) NSUInteger info4;

- (instancetype)initWithID:(NSUInteger)ID
                     info1:(NSUInteger)info1
                     info2:(NSUInteger)info2
                     info3:(NSUInteger)info3
                     info4:(NSUInteger)info4;

@end
