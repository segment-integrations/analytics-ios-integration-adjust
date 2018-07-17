#import <Foundation/Foundation.h>
#import <Analytics/SEGIntegrationFactory.h>


@interface SEGAdjustIntegrationFactory : NSObject <SEGIntegrationFactory>

+ (instancetype)instance;
+ (instancetype)instanceWithAppSecret:(nullable NSArray<NSNumber *> *)secret;

@end
