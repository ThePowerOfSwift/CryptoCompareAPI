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
  func data(from filename: String) throws -> Data {
    let bundle = Bundle(for: type(of: self))
    let path = bundle.url(forResource: filename, withExtension: "json")!
    return try Data(contentsOf: path)
  }
  
  func testParseCoinList() {
    guard let data = try? data(from: "CoinListResponse") else {
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
    guard let data = try? data(from: "SymbolPrice") else {
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
    guard let data = try? data(from: "SymbolsPrice") else {
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
