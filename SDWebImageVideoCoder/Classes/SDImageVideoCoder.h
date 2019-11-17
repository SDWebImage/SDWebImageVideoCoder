/*
* This file is part of the SDWebImage package.
* (c) Olivier Poitrey <rs@dailymotion.com>
*
* For the full copyright and license information, please view the LICENSE
* file that was distributed with this source code.
*/

@import SDWebImage;

@interface SDImageVideoCoder : NSObject <SDAnimatedImageCoder>

@property (nonatomic, class, readonly, nonnull) SDImageVideoCoder *sharedCoder;

@end
