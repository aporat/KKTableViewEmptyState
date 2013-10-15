# KKTableEmptyView

![](http://cocoapod-badges.herokuapp.com/v/KKTableEmptyView/badge.png) &nbsp; ![](http://cocoapod-badges.herokuapp.com/p/KKTableEmptyView/badge.png)

Customizable UIView for Handling Empty Table Views

![](https://github.com/aporat/KKTableEmptyView/raw/master/screenshots/iphone-1.png)
&nbsp;&nbsp;&nbsp;
![](https://github.com/aporat/KKTableEmptyView/raw/master/screenshots/ipad-1.png)


## Requirements
* Xcode 5.0 or higher
* Apple LLVM compiler
* iOS 6.0 or higher
* ARC


## Demo

build and run the `KKTableEmptyViewExample` project in Xcode to see `KKTableEmptyView` in action.

## Installation

The recommended approach for installing SocialAccounts is via the [CocoaPods](http://cocoapods.org/) package manager, as it provides flexible dependency management and dead simple installation.

Install CocoaPods if not already available:

``` bash
$ [sudo] gem install cocoapods
$ pod setup
```

Edit your Podfile and add `KKTableEmptyView`:

``` bash
$ edit Podfile
platform :ios, '6.0'

pod 'KKTableEmptyView', :head
```

Install into your Xcode project:

``` bash
$ pod install
```

Add `#include "KKTableEmptyView.h"` to the top of classes that will use it.


## Example Usage

### Showing and Hiding the toolbar


``` objective-c

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

```