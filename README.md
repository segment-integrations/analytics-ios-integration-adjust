# Analytics

[![CircleCI](https://circleci.com/gh/segment-integrations/analytics-ios-integration-adjust.svg?style=svg)](https://circleci.com/gh/segment-integrations/analytics-ios-integration-adjust)
[![Version](https://img.shields.io/cocoapods/v/Segment-Adjust.svg?style=flat)](http://cocoapods.org/pods/Segment-Adjust)
[![License](https://img.shields.io/cocoapods/l/Segment-Adjust.svg?style=flat)](http://cocoapods.org/pods/Segment-Adjust)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Adjust integration for analytics-ios.

## Installation

### Cocoapods
To install the Segment-Adjust integration, simply add this line to your [CocoaPods](http://cocoapods.org) `Podfile`:

```ruby
pod "Segment-Adjust"
```

### Carthage
Or add this to your [Carthage](https://github.com/Carthage/Carthage) `Cartfile`:

```ruby
github "segment-integrations/analytics-ios-integration-adjust"
```

In the Xcode project, add a preprocessor macro `CARTHAGE_BUILD=1` to all targets and configurations.
This is necessary because Adjust uses different import statements depending on if it has been added
via Carthage or Cocoapods.

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
