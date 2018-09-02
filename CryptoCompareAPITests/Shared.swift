//
//  Constants.swift
//  CryptoCompareApiTests
//
//  Created by Yevhen Velizhenkov on 8/30/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import Foundation

struct Shared {
  static let appName = "Swift.CryptoCompareApi.Tests"
  static let baseEndpoint = "https://min-api.cryptocompare.com/data/"
  
  static func data(from filename: String) throws -> Data {
    let bundle = Bundle(for: CryptoCompareAPITests.self)
    let path = bundle.url(forResource: filename, withExtension: "json")!
    return try Data(contentsOf: path)
  }
}
