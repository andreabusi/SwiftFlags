import XCTest
@testable import SwiftFlags

final class SwiftFlagsTests: XCTestCase {
    
    func testFlags() {
        // test some random flags
        XCTAssertNil(SwiftFlags.flag(for: "italaaa"))
        XCTAssertEqual(SwiftFlags.flag(for: "it"), "🇮🇹")
        XCTAssertEqual(SwiftFlags.flag(for: "united states"), "🇺🇸")
        XCTAssertEqual(SwiftFlags.flag(for: "FrAnCe"), "🇫🇷")
        XCTAssertNotEqual(SwiftFlags.flag(for: "japan"), "🇨🇳")
    }
    
    func testCountryCodes() {
        // test some country codes
        XCTAssertEqual(SwiftFlags.countryCode(for: "italy"), "IT")
        XCTAssertEqual(SwiftFlags.countryCode(for: "united kingdom"), "GB")
        XCTAssertNotEqual(SwiftFlags.countryCode(for: "united kingdom"), "UK")
        XCTAssertEqual(SwiftFlags.countryCode(for: "japan"), "JP")
    }

    static var allTests = [
        ("testFlags", testFlags),
        ("testCountryCodes", testCountryCodes)
    ]
}
