#import <Foundation/Foundation.h>
#import <Analytics/SEGAnalytics.h>
#import <Adjust/Adjust.h>


@interface SEGAdjustIntegration : NSObject <SEGIntegration, AdjustDelegate>

@property (nonatomic, strong) NSDictionary *settings;
@property (nonatomic, strong) SEGAnalytics *analytics;
@property (nonatomic, assign) NSString *segmentUserId;


- (instancetype)initWithSettings:(NSDictionary *)settings withAnalytics:(SEGAnalytics *)analytics;

@end
