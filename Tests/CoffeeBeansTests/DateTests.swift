//
//  DateTests.swift
//  
//
//  Created by Yhanco Grey Esteban on 6/5/22.
//

import XCTest
@testable import CoffeeBeans

class DateTests: XCTestCase {
    
    func testDate_initWithInteger() {
        let sut: Date = 2022_11_22
        
        let components = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: sut)
        
        XCTAssertEqual(components.year, 2022)
        XCTAssertEqual(components.month, 11)
        XCTAssertEqual(components.day, 22)
        XCTAssertEqual(components.hour, 0)
        XCTAssertEqual(components.minute, 0)
        XCTAssertEqual(components.second, 0)
    }
}
