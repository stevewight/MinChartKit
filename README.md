# MinChartKit
📈 Easily Create Hyper-Minimal Charts 📊

## Usage
All charts are created throught the ``MinChartKit`` ``struct``, by first injecting the data:

```swift
let data = [1.0,3.0,5.0,7.0,3.0,...]
let minChartKit = MinChartKit(data:data)
```

Then calling the type of chart you want to make with the data and passing that chart as a parameter:

```swift
...
let minLine = (pull from storyboard)
minChartKit.line(minLine)
```

As noted above, the ``MinLine`` or ``MinBar`` charts can be used in your storyboard and connected through an ``@IBOutlet``.


You can also inject a color for your chart on instantiation of the ``MinChartKit`` ``struct``:

```swift
...
let minChartKit = MinChartKit(data:data, color:.blue)
minChartKit.bar(minBar)
```

## Supported Charts

### ``MinLine``

![GoldKit](https://github.com/stevewight/MinChartKit/raw/master/images/line-chart.png)

### ``MinBar``

![GoldKit](https://github.com/stevewight/MinChartKit/raw/master/images/bar-chart.png)

## On the Sholders...
*MinChartKit* is built on top of [*``Charts``*](https://github.com/danielgindi/Charts), and therefore the min charts have access to the parent classes methods and parameters:

```swift
// animate drawing of a line
minLine.animate(xAxisDuration: 1.682)
```

![GoldKit](https://github.com/stevewight/MinChartKit/raw/master/images/line-animate.gif)

This also allows the ability to fully customize the ``MinLine`` chart in any way you would customize the  ``LineChartView`` class.  Take a look at the [*``Charts``*](https://github.com/danielgindi/Charts) docs for more details.

## Installation
The easiest way to use *MinChartKit* is with CocoaPods

### Installation with CocoaPods
To integrate *MinChartKit* into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
platform :ios, '11.0'

target 'TargetName' do
  pod 'MinChartKit'
end
```

Then, run the following command:

```bash
$ pod install
```

## Pre-Release Version
This is a pre-release version of *MinChartKit* and although it is stable and should be working in all the above cases, things will be added, changed and potentially break.

## License
*MinChartKit* is released under an **MIT** license.  So use it how ever you want.
