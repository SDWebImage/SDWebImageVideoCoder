//
//  SDViewController.m
//  SDWebImageVideoCoder
//
//  Created by lizhuoli1126@126.com on 11/17/2019.
//  Copyright (c) 2019 lizhuoli1126@126.com. All rights reserved.
//

#import "SDViewController.h"
#import <SDWebImage/SDWebImage.h>
#import <SDWebImageVideoCoder/SDWebImageVideoCoder.h>

@interface SDViewController ()

@property (nonatomic, strong) SDAnimatedImageView *imageView;

@end

@implementation SDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [SDImageCodersManager.sharedManager addCoder:SDImageVideoCoder.sharedCoder];
    
    self.imageView = [SDAnimatedImageView new];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.imageView];
    
    NSURL *gifvURL = [NSURL URLWithString:@"https://i.imgur.com/FY1AbSo.mp4"];
    
    [self.imageView sd_setImageWithURL:gifvURL completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        if (image) {
            NSLog(@"GIFV load success");
        } else {
            NSLog(@"Error: %@", error);
        }
    }];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.imageView.frame = self.view.bounds;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
