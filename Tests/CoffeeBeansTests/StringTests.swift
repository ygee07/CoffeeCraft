import XCTest
@testable import CoffeeBeans

final class StringTests: XCTestCase {

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

    func testStringIsEmail() {
        XCTAssertTrue("test@test.com".isEmail)
        
        XCTAssertFalse("test@test".isEmail)
        XCTAssertFalse("t@t".isEmail)
        XCTAssertFalse("test@.com".isEmail)
    }
    
    func testStringIsMoney() {
        XCTAssertTrue("1000".isMoney)
        XCTAssertTrue("1000.0".isMoney)
        XCTAssertTrue("1000.00".isMoney)
        XCTAssertTrue("1,000".isMoney)
        XCTAssertTrue("1,000.0".isMoney)
        XCTAssertTrue("1,000.00".isMoney)
        XCTAssertTrue("1,000,000.00".isMoney)
        
        XCTAssertFalse("1000.00,0".isMoney)
        XCTAssertFalse("1000.00.0".isMoney)
    }
    
    func testPrettyDecimal() {
        XCTAssertEqual("1000".prettyDecimal(), "1,000")
        XCTAssertEqual("1000.0".prettyDecimal(), "1,000")
        XCTAssertEqual("1000.00".prettyDecimal(), "1,000")
        XCTAssertEqual("1000.01".prettyDecimal(), "1,000.01")
        XCTAssertEqual("10000.01".prettyDecimal(), "10,000.01")
        XCTAssertEqual("100000.01".prettyDecimal(), "100,000.01")
        XCTAssertEqual("1000000.01".prettyDecimal(), "1,000,000.01")
    }
    
    func testPlainDecimal() {
        XCTAssertEqual("1,000".plainDecimal(), "1000")
        XCTAssertEqual("1,000.0".plainDecimal(), "1000")
        XCTAssertEqual("1,000.00".plainDecimal(), "1000")
        XCTAssertEqual("1,000.01".plainDecimal(), "1000.01")
        XCTAssertEqual("10,000.01".plainDecimal(), "10000.01")
        XCTAssertEqual("100,000.01".plainDecimal(), "100000.01")
        XCTAssertEqual("1,000,000.01".plainDecimal(), "1000000.01")
    }
}


