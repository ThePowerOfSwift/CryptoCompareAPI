//
//  CoinListResponse.swift
//  CryptoCompareApi
//
//  Created by Yevhen Velizhenkov on 9/1/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import Foundation

public typealias CoinListResponse = [String: CoinListItem]

public struct CoinListItem: Decodable {
  enum CodingKeys: String, CodingKey {
    case id = "Id"
    case url = "Url"
    case imageUrl = "ImageUrl"
    case name = "Name"
    case symbol = "Symbol"
    case coinName = "CoinName"
    case fullName = "FullName"
    case algorithm = "Algorithm"
    case proofType = "ProofType"
    case fullyPremined = "FullyPremined"
    case totalCoinSupply = "TotalCoinSupply"
    case builtOn = "BuiltOn"
    case smartContractAddress = "SmartContractAddress"
    case preMinedValue = "PreMinedValue"
    case sortOrder = "SortOrder"
    case sponsored = "Sponsored"
    case isTrading = "IsTrading"
  }
  
  public let id: String
  public let url: String
  public let imageUrl: String?
  public let name: String
  public let symbol: String
  public let coinName: String
  public let fullName: String
  public let algorithm: String
  public let proofType: String
  public let fullyPremined: String
  public let totalCoinSupply: String
  public let builtOn: String
  public let smartContractAddress: String
  public let preMinedValue: String
  public let sortOrder: String
  public let sponsored: Bool
  public let isTrading: Bool
}
