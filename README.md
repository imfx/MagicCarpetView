MagicCarpetView
================
[![License](https://img.shields.io/github/license/rockbarato/MagicCarpetView.svg)](http://opensource.org/licenses/MIT)
[![CocoaPods Platform](https://img.shields.io/cocoapods/p/MagicCarpetView.svg)](https://github.com/rockbarato/MagicCarpetView)
[![Language](https://img.shields.io/badge/language-Objective--C-green.svg)](https://github.com/rockbarato/MagicCarpetView)
[![CocoaPods Tag](https://img.shields.io/cocoapods/v/MagicCarpetView.svg)](https://github.com/rockbarato/MagicCarpetView)

## Installation

> Instead of adding the source files directly to your project, you may want to consider using [CocoaPods](http://cocoapods.org/) to manage your dependencies. Follow the instructions on the CocoaPods site to install the gem, and specify `MagicCarpetView` as a dependency in your `Podfile` with

```ruby
pod 'MagicCarpetView', '~> 0.0.1'
```

But if you want to do it the old fashioned way, just add `MagicCarpetView.h/m` files to your project.

## Usage

First, you need to create a subclass of `MagicCarpetView`.

Then import your new view in your controller's header file:

```objc
#import "CardView.h"
```

When setup is complete, init your custom view and add stack anywhere.

```objc
- (void)viewDidLoad {
	[super viewDidLoad];

	self.view.backgroundColor = [UIColor purpleColor];

	CardView *cardView = [[CardView alloc] initWithFrame:CGRectMake(0, 333, 320, 158)];
	cardView.backgroundColor = [UIColor greenColor];
	cardView.contentView.backgroundColor = [UIColor blueColor];
	cardView.margin = 0.8; // Default is 1.0

	[self.view addSubview:cardView];
}
```

## Requirements

* ARC
* iOS 6.0 and above

## Collaboration

Feel free to collaborate with ideas, issues and/or pull requests.

## License
MagicCarpetView is available under the [MIT](http://opensource.org/licenses/MIT) license. See the LICENSE file for more info.