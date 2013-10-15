//
// Copyright 2011-2012 Adar Porat (https://github.com/aporat)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "KKTableEmptyView.h"

@implementation KKTableEmptyView


- (id)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
        self.imageView = [[UIImageView alloc] init];
        self.imageView.contentMode = UIViewContentModeCenter;
        [self addSubview:self.imageView];
        
        self.titleLabel = [[UILabel alloc] init];
        self.titleLabel.backgroundColor = [UIColor clearColor];
        self.titleLabel.textColor = [UIColor grayColor];
        self.titleLabel.font = [UIFont boldSystemFontOfSize:18];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:self.titleLabel];
        
        self.subtitleLabel = [[UILabel alloc] init];
        self.subtitleLabel.backgroundColor = [UIColor clearColor];
        self.subtitleLabel.textColor = [UIColor grayColor];
        self.subtitleLabel.font = [UIFont boldSystemFontOfSize:12];
        self.subtitleLabel.textAlignment = NSTextAlignmentCenter;
        self.subtitleLabel.numberOfLines = 0;
        [self addSubview:self.subtitleLabel];
    }
    
    return self;
}

- (void)layoutSubviews {
    CGSize size = [self.subtitleLabel sizeThatFits:CGSizeMake(self.frame.size.width - 10.0f * 2, 20)];
    self.subtitleLabel.frame = CGRectMake(0, 0, size.width, size.height);
    [self.titleLabel sizeToFit];
    [self.imageView sizeToFit];
    
    CGFloat totalHeight = 15.0f;
    
    totalHeight += _imageView.frame.size.height;
    if (_titleLabel.text.length) {
        totalHeight += _titleLabel.frame.size.height;
    }
    if (_subtitleLabel.text.length) {
        totalHeight += _subtitleLabel.frame.size.height;
    }
    
    CGFloat top = floor(self.frame.size.height / 2 - totalHeight / 2) - 70;
    
    _imageView.frame = CGRectMake(floor(self.frame.size.width/2 - _imageView.frame.size.width/2), top, _imageView.frame.size.width,_imageView.frame.size.height);
    top += _imageView.frame.size.height + 30.0f;
    
    if (_titleLabel.text.length) {
        _titleLabel.frame = CGRectMake(floor(self.frame.size.width/2 - _titleLabel.frame.size.width/2), top, _titleLabel.frame.size.width,_titleLabel.frame.size.height);
        top += _titleLabel.frame.size.height + 10.0f;
    }
    
    if (_subtitleLabel.text.length) {
        _subtitleLabel.frame = CGRectMake(floor(self.frame.size.width/2 - _subtitleLabel.frame.size.width/2), top, _subtitleLabel.frame.size.width,_subtitleLabel.frame.size.height);
    }
    
}


@end
