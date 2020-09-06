#import "SEGAdjustAppSecret.h"


@interface SEGAdjustAppSecret ()

@property (nonatomic, assign) NSUInteger ID;
@property (nonatomic, assign) NSUInteger info1;
@property (nonatomic, assign) NSUInteger info2;
@property (nonatomic, assign) NSUInteger info3;
@property (nonatomic, assign) NSUInteger info4;

@end


@implementation SEGAdjustAppSecret

#pragma mark - Initialization

- (instancetype)initWithID:(NSUInteger)ID
                     info1:(NSUInteger)info1
                     info2:(NSUInteger)info2
                     info3:(NSUInteger)info3
                     info4:(NSUInteger)info4 {
    if (self = [super init]) {
        self.ID = ID;
        self.info1 = info1;
        self.info2 = info2;
        self.info3 = info3;
        self.info4 = info4;
    }
    return self;
}

@end
