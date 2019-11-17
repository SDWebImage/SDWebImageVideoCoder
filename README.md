# SDWebImageVideoCoder

[![CI Status](https://img.shields.io/travis/lizhuoli1126@126.com/SDWebImageVideoCoder.svg?style=flat)](https://travis-ci.org/lizhuoli1126@126.com/SDWebImageVideoCoder)
[![Version](https://img.shields.io/cocoapods/v/SDWebImageVideoCoder.svg?style=flat)](https://cocoapods.org/pods/SDWebImageVideoCoder)
[![License](https://img.shields.io/cocoapods/l/SDWebImageVideoCoder.svg?style=flat)](https://cocoapods.org/pods/SDWebImageVideoCoder)
[![Platform](https://img.shields.io/cocoapods/p/SDWebImageVideoCoder.svg?style=flat)](https://cocoapods.org/pods/SDWebImageVideoCoder)

## What's for

This is just a toy coder plugin for [SDWebImage](https://github.com/SDWebImage). Which aim to provide a demo usage that how SDWeImage combined the Animated Image View and Player and let it works for generic usage and customization.

**Important**: This project is just a toy, which means, it does not provide any production ready features, and the performances is really slow.

For real world rendering for small video files (like [Imgur's GIFV format](https://help.imgur.com/hc/en-us/articles/208606616-What-is-GIFV-)). You should always prefers to use the video player and rendering components, like AVKit's [AVPlayerViewController](https://developer.apple.com/documentation/avkit/avplayerviewcontroller) .

This coder plugin, provide the animation loading support for video format, including:

+ MP4 (MPEG/4)
+ MOV (QuickTime Movie)
+ AVI (Audio Video Interleave)

## Requirements

+ iOS 8+
+ macOS 10.10+
+ tvOS 9+

## Installation

SDWebImageVideoCoder is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SDWebImageVideoCoder'
```

## Usage

### Load Video URL

For coder plugin usage, see [Wiki - Coder Usage](https://github.com/SDWebImage/SDWebImage/wiki/Advanced-Usage#coder-usage)

+ Objective-C

```objective-c
SDAnimatedImageView *imageView;
NSURL *videoURL = [NSURL URLWithString:@"https://i.imgur.com/FY1AbSo.mp4"]; 
[imageView sd_setImageWithURL:videoURL];
```

+ Swift

```swift
let imageView: SDAnimatedImageView
let url = URL(string: "https://i.imgur.com/FY1AbSo.mp4")
imageView.sd_setImage(url: url)
```

### AVAsset player usage

For player usage, see [Wiki - Animated Image Player](https://github.com/SDWebImage/SDWebImage/wiki/Advanced-Usage#animated-player-530)

+ Objective-C

```objective-c
// AVAsset
AVAsset *asset;
AVAssetImageGenerator *generator = [AVAssetImageGenerator assetImageGeneratorWithAsset:asset];
generator.appliesPreferredTrackTransform = YES;
generator.requestedTimeToleranceBefore = kCMTimeZero;
generator.requestedTimeToleranceAfter = kCMTimeZero;
// Player
SDAnimatedImagePlayer *player = [SDAnimatedImagePlayer playerWithProvider:generator];
player.animationFrameHandler = ^(NSUInteger index, UIImage * frame) {
    // frames
};
[player seekToFrameAtIndex:5 loopCount:0];
[player play];
```

+ Swift

```swift
let asset: AVAsset
let generator = AVAssetImageGenerator(asset: asset)
generator.appliesPreferredTrackTransform = true
generator.requestedTimeToleranceBefore = .zero
generator.requestedTimeToleranceAfter = .zero
// Player
let player = SDAnimatedImagePlayer(provider: generator)
player.animationFrameHandler = { (index, frame) in 
    // frames
}
player.seekToFrame(at: 5, loopCount: 0)
player.play()
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

<img src="https://raw.githubusercontent.com/SDWebImage/SDWebImageVideoCoder/master/Example/Screenshot/MP4Demo.png" width="600" />

These MP4 video is from [Imgur](https://imgur.com/).

## Author

DreamPiggy, lizhuoli1126@126.com

## License

SDWebImageVideoCoder is available under the MIT license. See the LICENSE file for more info.
