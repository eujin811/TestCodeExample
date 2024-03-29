//
//  ConverterTests.swift
//  UnitTestUIKitExampleTests
//
//  Created by YoujinMac on 3/17/24.
//

        /*** TDD Test ***/

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
    
     func testRomanNumConvertForFourExample() {
         let num = 4
         let result = sut?.arabicNumToRomanNum(num)
         XCTAssertEqual(result, "IV", "\(num)의 컨버팅 실패")
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
   
    func testRomanNumConvertForNineExample() {
        let num = 9
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "IX", "\(num)의 컨버팅 실패")
    }
    
    func testRomanNumConvertForTenExample() {
        let num = 10
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "X", "\(num)의 컨버팅 실패")
    }
    
    func testRomanNumConvertForTwentyExample() {
        let num = 20
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "XX", "\(num)의 컨버팅 실패")
    }
    
    func testRomanNumConvertFor27() {
        let num = 27
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "XXVII", "\(num)의 컨버팅 실패")
    }
    
    func testRomanNumConvertForFourty() {
        let num = 40
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "XL", "\(num)의 컨버팅 실패")
    }
    
    func testRomanNumConvertForFifty() {
        let num = 50
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "L", "\(num)의 컨버팅 실패")
    }
    
    func testRomanNumConvertForNinety() {
        let num = 90
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "XC", "\(num)의 컨버팅 실패")
    }
    
    func testRomanNumConvertForHundred() {
        let num = 100
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "C", "\(num)의 컨버팅 실패")
    }
    
    func testRomanNumConvertForFiveHundred() {
        let num = 500
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "D", "\(num)의 컨버팅 실패")
    }
    
    func testRomanNumConvertForThousand() {
        let num = 1000
        let result = sut?.arabicNumToRomanNum(num)
        XCTAssertEqual(result, "M", "\(num)의 컨버팅 실패")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
