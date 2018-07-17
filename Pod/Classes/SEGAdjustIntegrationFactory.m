#import "SEGAdjustIntegrationFactory.h"
#import "SEGAdjustIntegration.h"


@implementation SEGAdjustIntegrationFactory {
    NSArray<NSNumber *> *appSecret;
}

+ (instancetype)instance {
    return [self instanceWithAppSecret: nil];
}

+ (instancetype)instanceWithAppSecret: (nullable NSArray<NSNumber *> *)secret
{
    static dispatch_once_t once;
    static SEGAdjustIntegrationFactory *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] initWithAppSecret: secret];
    });
    return sharedInstance;
}

- (instancetype)initWithAppSecret: (NSArray<NSNumber *> *)secret
{
    self = [super init];
    appSecret = secret;
    return self;
}

- (id<SEGIntegration>)createWithSettings:(NSDictionary *)settings forAnalytics:(SEGAnalytics *)analytics
{
    return [[SEGAdjustIntegration alloc] initWithAppSecret: appSecret settings:settings analytics:analytics];
}

- (NSString *)key
{
    return @"Adjust";
}

@end
