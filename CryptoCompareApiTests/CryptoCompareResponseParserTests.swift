//
//  CryptoCompareResponseParserTests.swift
//  CryptoCompareApiTests
//
//  Created by Yevhen Velizhenkov on 9/1/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import XCTest
@testable import CryptoCompareApi

class CryptoCompareResponseParserTests: XCTestCase {
  func testParseCoinList() {
    guard let json = try? String(contentsOfFile: "Responses/CoinListResponse.json") else {
      XCTFail("Failed to load json response from file")
    }
    
    guard let data = json.data(using: .utf8) else {
      XCTFail("Failed to load data from json")
    }
    
    do {
      let parsedResponse = try ResponseParser.parseServerResponse(String.self, data: data)
    } catch {
      XCTFail("Failed to parse response")
    }
  }
}
