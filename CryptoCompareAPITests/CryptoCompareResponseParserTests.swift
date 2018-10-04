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
  func parse<T: APIRequest>(request: T.Type) {
    var filename = String(describing: request)
    filename = filename.replacingOccurrences(of: "Get", with: "")
    filename = filename.replacingOccurrences(of: "Request", with: "")
    filename.append("Response")
    
    guard let data = try? Shared.data(from: filename) else {
      XCTFail("Failed to load data")
      return
    }
    
    do {
      _ = try! JSONDecoder().decode(CryptoCompareResponse<T.Response>.self, from: data)
    } catch let error {
      XCTFail("Failed to parse response. \(error.localizedDescription)")
    }
  }
  
  func testParseCoinList() {
    parse(request: GetCoinListRequest.self)
  }
  
  func testParseSymbolPrice() {
    parse(request: GetSymbolPriceRequest.self)
  }
  
  func testParseSymbolsPrice() {
    parse(request: GetSymbolsPriceRequest.self)
  }
  
  func testParseSymbolsFullData() {
    parse(request: GetSymbolsFullDataRequest.self)
  }
  
  func testParseHistoricalDaily() {
    parse(request: GetHistoricalDailyRequest.self)
  }
  
  func testParseHistoricalHourly() {
    parse(request: GetHistoricalHourlyRequest.self)
  }
  
  func testParseCustomAverage() {
    parse(request: GetCustomAverageRequest.self)
  }
  
  func testParseExchanges() {
    parse(request: GetExchangesRequest.self)
  }
  
  func testParseNewsFeeds() {
    parse(request: GetNewsFeedsRequest.self)
  }
}
