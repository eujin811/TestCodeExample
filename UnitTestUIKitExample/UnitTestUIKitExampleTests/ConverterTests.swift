//
//  ConverterTests.swift
//  UnitTestUIKitExampleTests
//
//  Created by YoujinMac on 3/17/24.
//

import XCTest
@testable import UnitTestUIKitExample

final class ConverterTests: XCTestCase {
    private var sut: Converter?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.sut = Converter()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        self.sut = nil
    }

    func testRomanNumConvertExample() {
        let num = 1
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "I", "\(num)의 컨버팅 실패")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
