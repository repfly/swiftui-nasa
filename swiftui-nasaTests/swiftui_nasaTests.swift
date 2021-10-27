//
//  swiftui_nasaTests.swift
//  swiftui-nasaTests
//
//  Created by Alper Yıldırım on 26.10.2021.
//

import XCTest
@testable import swiftui_nasa

class swiftui_nasaTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testData() throws {
        RoverPhotoService.shared.fetchImages(roverName: RoverName.spirit, sol: 1, page: 1, camera: nil) {
            result in
            
            XCTAssert(result.photos!.count > 1);
        }
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
