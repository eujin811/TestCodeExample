//
//  NimbleTestExampleTests.swift
//  UnitTestUIKitExampleTests
//
//  Created by YoujinMac on 3/19/24.
//

import XCTest
import Nimble

@testable import UnitTestUIKitExample
final class NimbleTestExampleTests: XCTestCase {

    private var sut: Converter?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.sut = Converter()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        self.sut = nil
    }

    func testBasicExample() throws {
        let result = sut?.convertToString(2)
        expect(result).to(contain("1"))
    }
    
    func testDescriptionExample() throws {
        expect(1+1).to(equal(3), description: "failed - 더하기")
    }
    
    func testAsyncExmpale() throws {
        var ocean = [String]()
        DispatchQueue.main.async {
            ocean.append("dolphins")
            ocean.append("whales")
//            ocean.append("apple")
        }
        
        expect(ocean).toEventually(contain("dolphins", "whales"))
    }
    
    func testTimeOutExmpale() throws {
        var ocean = [String]()
        DispatchQueue.main.async {
            ocean.append("dolphins")
            ocean.append("whales")
        }
        
        expect(ocean).toEventually(contain("starfish"), timeout: .seconds(3))
    }
    
    func testTypeExample() throws {
        expect(self.sut).to(beAKindOf(Converter.self))
    }
    
    func testPassFailExample() throws {
        let pass = true
        let fail = false
        
        expect(pass).to(beTruthy())
        expect(pass).to(beFalse())
        
        expect(fail).to(beTruthy())
        expect(fail).to(beFalse())
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
