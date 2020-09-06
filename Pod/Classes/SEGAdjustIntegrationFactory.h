#import <Foundation/Foundation.h>
#import <Analytics/SEGIntegrationFactory.h>

@class SEGAdjustAppSecret;


@interface SEGAdjustIntegrationFactory : NSObject <SEGIntegrationFactory>

+ (instancetype)instance;
+ (instancetype)instanceWithAppSecret:(nullable SEGAdjustAppSecret *)secret NS_SWIFT_NAME(instance(appSecret:));

@end
