#import <Foundation/Foundation.h>
#import <Analytics/SEGAnalytics.h>
#import <Adjust/Adjust.h>


@interface SEGAdjustIntegration : NSObject <SEGIntegration, AdjustDelegate>

@property (nonatomic, strong) NSDictionary *settings;
@property (nonatomic, strong) SEGAnalytics *analytics;

- (instancetype)initWithAppSecret:(nullable NSArray<NSNumber *> *)secret settings:(NSDictionary *)settings analytics:(SEGAnalytics *)analytics;

@end
