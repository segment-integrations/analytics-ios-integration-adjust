#import <Foundation/Foundation.h>
#import <Analytics/SEGAnalytics.h>

#ifdef CARTHAGE_BUILD
    /* This header is used for XCode & Carthage build because when using adjust
     as a Carthage dependency it is imported as AdjustSDK/Adjust.h */
    #import <AdjustSdk/Adjust.h>
#else
    /* This header is used for make build because when using adjust
     as a cocoapods dependency it is imported as Adjust/Adjust.h */
    #import <Adjust/Adjust.h>
#endif


@interface SEGAdjustIntegration : NSObject <SEGIntegration, AdjustDelegate>

@property (nonatomic, strong) NSDictionary *settings;
@property (nonatomic, strong) SEGAnalytics *analytics;

- (instancetype)initWithSettings:(NSDictionary *)settings withAnalytics:(SEGAnalytics *)analytics;

@end
