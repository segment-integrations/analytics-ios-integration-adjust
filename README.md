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

### Troubleshooting

For users who are unable to bundle static libraries as dependencies (Swift project for example) you can choose `StaticLibWorkaround` subspec, but be sure to include `Adjust` to your Podfile:

Example:

```ruby
  pod 'Adjust'
  pod 'Segment-Adjust/StaticLibWorkaround'
```

Next step, add manually 4 files to your project (located under `<YOUR_APP>/Pods/Segment-Adjust/Pod/Classes`):

 - `SEGAdjustIntegration.h`
 - `SEGAdjustIntegration.m`
 - `SEGAdjustIntegrationFactory.h`
 - `SEGAdjustIntegrationFactory.m`

Xcode will ask you to generate `<YOUR_APP_NAME>-Bridging-Header.h`
Add to this file `#import "SEGAdjustIntegrationFactory.h"`

For more details follow the instructions from Apple [here](https://developer.apple.com/library/content/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html).

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
