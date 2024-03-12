//
//  UnitTestDescription.swift
//  UnitTestExampleTests
//
//  Created by YoujinMac on 3/12/24.
//

import XCTest

final class UnitTestDescription: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // 테스트 코드 시작전 실행 / 값 셋팅
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        // 모든 테스트코드 실행 후 호출 / 설정 값 해제 시
    }

    // 테스트 코드 작성하는 메인 코드 / 해당 부분 삭제 후 새롭게 생성하여 사용
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    // 성능 측정
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
