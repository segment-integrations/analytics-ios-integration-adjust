SDK ?= "iphonesimulator"
DESTINATION ?= "platform=iOS Simulator,name=iPhone 8"
PROJECT := Segment-Adjust
XC_ARGS := -scheme $(PROJECT)-Example -workspace Example/$(PROJECT).xcworkspace -sdk $(SDK) -destination $(DESTINATION) ONLY_ACTIVE_ARCH=NO

install: Example/Podfile Segment-Adjust.podspec
	pod repo update
	pod install --project-directory=Example

lint:
	pod lib lint --verbose --allow-warnings

clean:
	set -o pipefail && xcodebuild $(XC_ARGS) clean | xcpretty

build:
	set -o pipefail && xcodebuild $(XC_ARGS) | xcpretty

test:
	set -o pipefail && xcodebuild test $(XC_ARGS) | xcpretty --report junit

.PHONY: install clean build test
