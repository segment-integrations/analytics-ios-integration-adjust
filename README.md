# ⚠️ End-of-Support Announcement for Analytics-iOS Integrations ⚠️

Following the End-of-Support (EoS) for the core **Analytics-iOS SDK** in **March 2026**, this legacy integration repository is also deprecated and will no longer receive updates. 

Segment's future development efforts are concentrated on the new **Analytics-Swift** ecosystem. 

* To migrate your core SDK, please see the [Analytics-iOS to Analytics-Swift migration guide](https://segment.com/docs/connections/sources/catalog/libraries/mobile/swift/migration/).
* To find the modern Swift equivalent for this specific integration, check the [Analytics-Swift Destination Plugins list](https://github.com/segment-integrations?q=analytics-swift).

# Analytics

[![CircleCI](https://circleci.com/gh/segment-integrations/analytics-ios-integration-adjust.svg?style=svg)](https://circleci.com/gh/segment-integrations/analytics-ios-integration-adjust)
[![Version](https://img.shields.io/cocoapods/v/Segment-Adjust.svg?style=flat)](http://cocoapods.org/pods/Segment-Adjust)
[![License](https://img.shields.io/cocoapods/l/Segment-Adjust.svg?style=flat)](http://cocoapods.org/pods/Segment-Adjust)

Adjust integration for analytics-ios.

## Installation

To install the Segment-Adjust integration, simply add this line to your [CocoaPods](http://cocoapods.org) `Podfile`:

```ruby
pod "Segment-Adjust"
```

## Usage

After adding the dependency, you must register the integration with our SDK.  To do this, import the Adjust integration in your `AppDelegate`:

```
#import <Segment-Adjust/SEGAdjustIntegrationFactory.h>
```

And add the following lines:

```
NSString *const SEGMENT_WRITE_KEY = @" ... ";
SEGAnalyticsConfiguration *config = [SEGAnalyticsConfiguration configurationWithWriteKey:SEGMENT_WRITE_KEY];

[config use:[SEGAdjustIntegrationFactory instance]];

[SEGAnalytics setupWithConfiguration:config];

```

## IDFA tracking for iOS14


1. Add the AppTrackingTransparency.framework - This framework is needed in iOS 14 and later for SDK to be able to wrap user's tracking consent dialog and access to value of the user's consent to be tracked or not.
2. Add `"Privacy - Tracking Usage Description"` to your app Info.plist with a string indicating your intentions for tracking a user's IDFA.
3. Implement the Adjust SDK App-tracking authorization wrapper, to conveniently and efficiently communicate the new state of consent to the backend. As soon as a user responds to the pop-up dialog, it's then communicated back using your callback method. The SDK will also inform the backend of the user's choice.

```
Adjust.requestTrackingAuthorizationWithCompletionHandler().then((status) {
  switch (status) {
    case 0:
      // ATTrackingManagerAuthorizationStatusNotDetermined case
      break;
    case 1:
      // ATTrackingManagerAuthorizationStatusRestricted case
      break;
    case 2:
      // ATTrackingManagerAuthorizationStatusDenied case
      break;
    case 3:
      // ATTrackingManagerAuthorizationStatusAuthorized case
      break;
  }
});
```
4. Allow Segment to collect the IDFA by implement the `adSupportBlock` as documented in [Segment IDFA Collection documentation.](https://segment.com/docs/connections/sources/catalog/libraries/mobile/ios/#idfa-collection-in-40-beta-and-later)

## License

```
WWWWWW||WWWWWW
 W W W||W W W
      ||
    ( OO )__________
     /  |           \
    /o o|    MIT     \
    \___/||_||__||_|| *
         || ||  || ||
        _||_|| _||_||
       (__|__|(__|__|

The MIT License (MIT)

Copyright (c) 2016 Segment, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
