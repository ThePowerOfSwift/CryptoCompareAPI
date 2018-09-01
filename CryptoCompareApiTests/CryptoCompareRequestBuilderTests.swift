//
//  CryptoCompareRequestTests.swift
//  CryptoCompareApiTests
//
//  Created by Yevhen Velizhenkov on 8/30/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import XCTest
@testable import CryptoCompareApi

class CryptoCompareRequestBuilderTests: XCTestCase {
  func testBuildGetCoinListRequest() {
    let request = GetCoinListRequest()
    
    guard let urlRequest = try? RequestBuilder.makeURLRequest(for: request, baseEndpoint: Constants.baseEndpoint, applicationName: nil) else {
      XCTFail("Request builder should not throw here")
      return
    }
    
    print("\n\nGet Coin List: \(urlRequest.url!.absoluteString)\n\n")
    XCTAssert(urlRequest.url!.absoluteString == "\(Constants.baseEndpoint)\(request.resourceName)")
  }
  
  func testBuildGetSymbolPriceRequest() {
    let request = GetSymbolPriceRequest(fsym: "BTC", tsyms: "USD,EUR", e: .binance)
    
    guard let urlRequest = try? RequestBuilder.makeURLRequest(for: request, baseEndpoint: Constants.baseEndpoint, applicationName: nil) else {
      XCTFail("Request builder should not throw here")
      return
    }
    
    print("\n\nGet Symbol Price: \(urlRequest.url!.absoluteString)\n\n")
    XCTAssert(urlRequest.url!.absoluteString == "\(Constants.baseEndpoint)\(request.resourceName)?e=Binance&fsym=BTC&tsyms=USD,EUR")
  }
  
  func testBuildGetSymbolsPriceRequest() {
    let request = GetSymbolsPriceRequest(fsyms: "BTC,ETH", tsyms: "USD,EUR", e: .binance)
    
    guard let urlRequest = try? RequestBuilder.makeURLRequest(for: request, baseEndpoint: Constants.baseEndpoint, applicationName: nil) else {
      XCTFail("Request builder should not throw here")
      return
    }
    
    print("\n\nGet Symbols Price: \(urlRequest.url!.absoluteString)\n\n")
    XCTAssert(urlRequest.url!.absoluteString == "\(Constants.baseEndpoint)\(request.resourceName)?e=Binance&fsyms=BTC,ETH&tsyms=USD,EUR")
  }
}
