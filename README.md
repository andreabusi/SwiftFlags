# SwiftFlags

![CocoaPod version](https://img.shields.io/cocoapods/v/SwiftFlags)

SwiftFlags is a simple library to get emoji flag from a country name or a country code (ISO 3166-1).

## Usage

SwiftFlags comes with some statis methods that you can use:

```swift
class func flag(for country: String) -> String?
```

```swift
class func countryCode(for country: String) -> String?
```

## Examples

Here are some examples, you can pass both a country name or a country code.

```swift
// Returns 🇮🇹
let _ = SwiftFlag.flag(for: "italy")
// Returns 🇺🇸
let _ = SwiftFlag.flag(for: "United States")
// Returns nil
let _ = SwiftFlag.flag(for: "England")
// Returns 🇯🇵
let _ = SwiftFlag.flag(for: "JP")
// Returns 🇰🇷
let _ = SwiftFlag.flag(for: "Korea, South")
```

## Requirements

The latest version of SwiftFlags require:

* Swift 5

## Installation

SwiftFlags is available via CocoaPods, Swift Package Manager or you can directly embeed the library inside your project

### CocoaPods

`pod 'SwiftFlags'`

### Swift Package Manager

// todo

### Manual installation

Just drag and drop the `SwiftFlags.swift` file inside your project

## Credits

This library is based on the work of two existing library:

* [country-emoji](https://github.com/meeDamian/country-emoji/blob/master/src/lib.js), available for JavaScript
* [flag-emoji-from-country-code](https://github.com/bendodson/flag-emoji-from-country-code), a great snippet to get the emoji flag from an ISO 3166-1 region code

## ToDo

* [ ] Add Swift Package Manager support
* [ ] Improve ObjC interoperability
