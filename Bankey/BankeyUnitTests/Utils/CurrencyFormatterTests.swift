//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Taiki on 4/01/6.
//

import Foundation
import XCTest

@testable import Bankey

class Text: XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testShouldBeVisible() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let locale = Locale.current
        let currencySymbol = locale.currencySymbol!
        
        let result = formatter.dollarsFormatted(929466.00)
        print("\(currencySymbol)")
        XCTAssertEqual(result, "\(currencySymbol)929,466")
    }
    
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0.00)
        XCTAssertEqual(result, "¥0")
    }
}
