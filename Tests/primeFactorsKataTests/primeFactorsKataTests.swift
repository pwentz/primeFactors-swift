import XCTest
@testable import primeFactorsKata

class primeFactorsKataTests: XCTestCase {
    func testItFactorizesZero() {
        XCTAssertEqual(primeFactors(of: 0), [])
    }

    func testItFactorizesOne() {
        XCTAssertEqual(primeFactors(of: 1), [])
    }

    func testItFactorizesTwo() {
        XCTAssertEqual(primeFactors(of: 2), [2])
    }

    func testItFactorizesFour() {
        XCTAssertEqual(primeFactors(of: 4), [2,2])
    }

    func testItFactorizesBigNumbers() {
        XCTAssertEqual(primeFactors(of: 147), [3,7,7])
    }

    func testItFactorizesBiggerNumbers() {
        XCTAssertEqual(primeFactors(of: 168), [2,2,2,3,7])
    }

    func testItFactorizesAllNumber() {
        XCTAssertEqual(primeFactors(of: 330), [2,3,5,11])
    }

    static var allTests : [(String, (primeFactorsKataTests) -> () throws -> Void)] {
        return [
        ]
    }
}
