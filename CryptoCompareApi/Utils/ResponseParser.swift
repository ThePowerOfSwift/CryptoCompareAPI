//
//  ResponseParser.swift
//  CryptoCompareApi
//
//  Created by Yevhen Velizhenkov on 8/30/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import Foundation

enum ResponseParser {
  static func parseServerResponse<T: Decodable>(_ response: T.Type, data: Data) throws -> T {
    let cryptoCompareResponse = try JSONDecoder().decode(CryptoCompareResponse<T>.self, from: data)
    
    if let serverResponse = cryptoCompareResponse.response {
      if serverResponse != "Success" {
        if let serverMessage = cryptoCompareResponse.message {
          throw CryptoCompareError.server(message: serverMessage)
        } else {
          throw CryptoCompareError.server(message: "Not specified.")
        }
      }
    }
    
    if let responseData = cryptoCompareResponse.data {
      return responseData
    } else {
      throw CryptoCompareError.decoding
    }
  }
}
