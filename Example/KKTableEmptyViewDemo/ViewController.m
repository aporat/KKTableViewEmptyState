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

#import "ViewController.h"
#import "KKTableEmptyView.h"


@interface ViewController ()

@property (nonatomic, strong) KKTableEmptyView *errorView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.errorView = [[KKTableEmptyView alloc] initWithFrame:self.tableView.frame];
    self.errorView.imageView.image = [UIImage imageNamed:@"KKTableEmptyView.bundle/users"];
    self.errorView.titleLabel.text = NSLocalizedString(@"No users found", @"");
    self.errorView.subtitleLabel.text = NSLocalizedString(@"Please try again later", @"");
    
    [self checkForEmpty];
}

    
- (void)checkForEmpty {
    [self.errorView removeFromSuperview];
    [self.tableView addSubview:self.errorView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
