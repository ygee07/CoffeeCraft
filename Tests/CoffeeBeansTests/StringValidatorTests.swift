import XCTest
@testable import CoffeeBeans

final class StringValidatorTests: XCTestCase {

    func testStringIsPresent() {
        XCTAssertFalse("".isPresent) // Empty String
        XCTAssertFalse(" ".isPresent) // Space
        XCTAssertFalse("    ".isPresent) // Tab
        XCTAssertFalse("\n".isPresent) // New Line
        
        XCTAssertTrue("abc".isPresent) // String
        XCTAssertTrue(" a ".isPresent) // with spaces
        XCTAssertTrue(" a   ".isPresent) // with tabs
        XCTAssertTrue("a\n".isPresent) // with new line
    }

    func testStringIsValidEmail() {
        XCTAssertTrue("test@test.com".isValidEmail)
        
        XCTAssertFalse("test@test".isValidEmail)
        XCTAssertFalse("t@t".isValidEmail)
        XCTAssertFalse("test@.com".isValidEmail)
    }
}


