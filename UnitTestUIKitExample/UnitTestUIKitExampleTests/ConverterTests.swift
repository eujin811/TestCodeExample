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

    func testRomanNumConvertForOneExample() {
        let num = 1
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "I", "\(num)의 컨버팅 실패")
    }
    
    func testRomanNumConvertForTwoExample() {
        let num = 2
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "II", "\(num)의 컨버팅 실패")
    }
    
    func testRomanNumConvertForFiveExample() {
        let num = 5
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "V", "\(num)의 컨버팅 실패")
    }
    
    func testRomanNumConvertForSixExample() {
        let num = 6
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "VI", "\(num)의 컨버팅 실패")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
