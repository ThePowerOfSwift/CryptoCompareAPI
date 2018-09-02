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
    guard let data = try? Shared.data(from: "CoinListResponse") else {
      XCTFail("Failed to load data")
      return
    }
    
    do {
      _ = try JSONDecoder().decode(CryptoCompareResponse<CoinListResponse>.self, from: data)
    } catch let error {
      XCTFail("Failed to parse response. \(error.localizedDescription)")
    }
  }
  
  func testParseSymbolPrice() {
    guard let data = try? Shared.data(from: "SymbolPrice") else {
      XCTFail("Failed to load data")
      return
    }
    
    do {
      _ = try JSONDecoder().decode(CryptoCompareResponse<GetSymbolPriceRequest.Response>.self, from: data)
    } catch let error {
      XCTFail("Failed to parse response. \(error.localizedDescription)")
    }
  }
  
  func testParseSymbolsPrice() {
    guard let data = try? Shared.data(from: "SymbolsPrice") else {
      XCTFail("Failed to load data")
      return
    }
    
    do {
      _ = try JSONDecoder().decode(CryptoCompareResponse<GetSymbolsPriceRequest.Response>.self, from: data)
    } catch let error {
      XCTFail("Failed to parse response. \(error.localizedDescription)")
    }
  }
}
