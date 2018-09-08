//
//  CryptoCompareApiTests.swift
//  CryptoCompareApiTests
//
//  Created by Yevhen Velizhenkov on 8/29/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import XCTest
@testable import CryptoCompareApi

class CryptoCompareAPITests: XCTestCase {
  private var api: CryptoCompareAPI!
  
  override func setUp() {
    super.setUp()
    api = CryptoCompareAPI(applicationName: Shared.appName)
  }
  
  func testGetCoinList() {
    let promise = expectation(description: "Performing request")
    
    api.send(GetCoinListRequest()) {
      switch $0 {
      case .success(let coinList):
        print("Fetched \(coinList.count) coins.")
        promise.fulfill()
        
      case .failure(let error):
        XCTFail(error.description)
      }
    }
    
    waitForExpectations(timeout: 15, handler: nil)
  }
  
  func testGetSymbolPrice() {
    let promise = expectation(description: "Performing request")
    let request = GetSymbolPriceRequest(fsym: "ETH", tsyms: "BTC,USD", e: .bitstamp)
    
    api.send(request) {
      switch $0 {
      case .success(let price):
        XCTAssert(price.count == 2)
        promise.fulfill()
        
      case .failure(let error):
        XCTFail(error.description)
      }
    }
    
    waitForExpectations(timeout: 10, handler: nil)
  }
  
  func testGetSymbolsPrice() {
    let promise = expectation(description: "Performing request")
    let request = GetSymbolsPriceRequest(fsyms: "BTC,ADA", tsyms: "ETH,USD")
    
    api.send(request) {
      switch $0 {
      case .success(let price):
        XCTAssert(price.count == 2)
        promise.fulfill()
        
      case .failure(let error):
        XCTFail(error.description)
      }
    }
    
    waitForExpectations(timeout: 10, handler: nil)
  }
  
  func testGetSymbolsFullData() {
    let promise = expectation(description: "Performing request")
    let request = GetSymbolsFullDataRequest(fsyms: "BTC,ADA", tsyms: "ETH,USD")
    
    api.send(request) {
      switch $0 {
      case .success(_):
        promise.fulfill()
        
      case .failure(let error):
        XCTFail(error.description)
      }
    }
    
    waitForExpectations(timeout: 10, handler: nil)
  }
  
  func testGetHistoricalDaily() {
    let promise = expectation(description: "Performing request")
    let request = GetHistoricalDailyRequest(fsym: "BTC", tsym: "USD")
    
    api.send(request) {
      switch $0 {
      case .success(_):
        promise.fulfill()
        
      case .failure(let error):
        XCTFail(error.description)
      }
    }
    
    waitForExpectations(timeout: 10, handler: nil)
  }
  
  func testGetCustomAverage() {
    let promise = expectation(description: "Performing request")
    let request = GetCustomAverageRequest(fsym: "BTC", tsym: "USD", e: .kraken)
    
    api.send(request) {
      switch $0 {
      case .success(_):
        promise.fulfill()
        
      case .failure(let error):
        XCTFail(error.description)
      }
    }
    
    waitForExpectations(timeout: 10, handler: nil)
  }
}
