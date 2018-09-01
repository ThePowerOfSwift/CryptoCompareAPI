//
//  CryptoCompareApiTests.swift
//  CryptoCompareApiTests
//
//  Created by Yevhen Velizhenkov on 8/29/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import XCTest
@testable import CryptoCompareApi

class CryptoCompareApiTests: XCTestCase {
  private var api: CryptoCompareApi!
  
  override func setUp() {
    super.setUp()
    api = CryptoCompareApi(applicationName: Constants.appName)
  }
  
  override func tearDown() {
      // Put teardown code here. This method is called after the invocation of each test method in the class.
      super.tearDown()
  }
  
  func testGetCoinList() {
    
  }
  
  func testPerformanceExample() {
      // This is an example of a performance test case.
      self.measure {
          // Put the code you want to measure the time of here.
      }
  }
    
}
