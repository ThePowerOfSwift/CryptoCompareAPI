//
//  CryptoCompareError.swift
//  CryptoCompareApi
//
//  Created by Yevhen Velizhenkov on 8/30/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import Foundation

public enum CryptoCompareError: Error, CustomStringConvertible {
  case parameterTypeNotSupported
  case requestBuildingError(message: String)
  case encoding
  case decoding
  case server(message: String)
  case noData
  case requestError(error: Error)
  case badResponse(statusCode: Int)
  
  public var description: String {
    switch self {
    case .parameterTypeNotSupported:
      return "Parameter type not supported."
      
    case .requestBuildingError(let message):
      return "Failed to build request. \(message)"
      
    case .requestError(let error):
      return "Request error. \(error.localizedDescription)"
      
    case .badResponse(let statusCode):
      return "Bad response. Status code (\(statusCode)."
      
    case .server(let message):
      return "Server error. \(message)"
      
    default:
      return "CryptoCompareApi internal error."
    }
  }
}
