/*
* This file is part of the SDWebImage package.
* (c) Olivier Poitrey <rs@dailymotion.com>
*
* For the full copyright and license information, please view the LICENSE
* file that was distributed with this source code.
*/

@import SDWebImage;
@import AVFoundation;

@interface AVAssetImageGenerator (SDAdditions) <SDAnimatedImageProvider>

+ (nullable instancetype)sd_assetImageGeneratorWithVideoData:(nonnull NSData *)data contentType:(nullable AVFileType)type;

@end
