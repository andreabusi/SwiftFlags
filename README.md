# SwiftFlags

![CocoaPod version](https://img.shields.io/cocoapods/v/SwiftFlags)

SwiftFlags is a simple library to get emoji flag from a country name or a country code (ISO 3166-1).

## Usage

SwiftFlags comes with some static methods that you can use:

```swift
class func flag(for country: String) -> String?
```

```swift
class func countryCode(for country: String) -> String?
```

## Examples

Here are some examples to get the emoji flag for a country. You can pass both a country name or a country code:

```swift
// Returns 🇮🇹
let _ = SwiftFlags.flag(for: "italy")
// Returns 🇺🇸
let _ = SwiftFlags.flag(for: "United States")
// Returns nil
let _ = SwiftFlags.flag(for: "England")
// Returns 🇯🇵
let _ = SwiftFlags.flag(for: "JP")
// Returns 🇰🇷
let _ = SwiftFlags.flag(for: "Korea, South")
```

SwiftFlags also provide the ability to return the ISO country code for a given country:

```swift
// Returns 'IT'
let _ = SwiftFlags.flag(for: "italy")
// Returns 'US'
let _ = SwiftFlags.flag(for: "United States")
// Returns nil
let _ = SwiftFlags.flag(for: "England")
```

## Requirements

The latest version of SwiftFlags require:

* Swift 5
* XCode 11+ (in order to use Swift Package Manager)

## Installation

SwiftFlags is available via CocoaPods, Swift Package Manager or you can directly embeed the library inside your project.

### CocoaPods

Add the following to your Podfile:

`pod 'SwiftFlags'`

### Swift Package Manager

Add the repo URL using the Swift Package Manager built inside Xcode:

`https://github.com/BubiDevs/SwiftFlags.git`

### Manual installation

Just drag and drop the files under the `Sources` folder inside your project.

## Credits

This library is based on the work of two existing library:

* [country-emoji](https://github.com/meeDamian/country-emoji/blob/master/src/lib.js), available for JavaScript
* [flag-emoji-from-country-code](https://github.com/bendodson/flag-emoji-from-country-code), a great snippet to get the emoji flag from an ISO 3166-1 region code

Thanks guys for your work!

## ToDo

* [x] Add Swift Package Manager support
* [x] Improve ObjC interoperability
