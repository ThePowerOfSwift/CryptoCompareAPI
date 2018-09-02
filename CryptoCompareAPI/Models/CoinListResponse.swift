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
  
  let id: String
  let url: String
  let imageUrl: String?
  let name: String
  let symbol: String
  let coinName: String
  let fullName: String
  let algorithm: String
  let proofType: String
  let fullyPremined: String
  let totalCoinSupply: String
  let builtOn: String
  let smartContractAddress: String
  let preMinedValue: String
  let sortOrder: String
  let sponsored: Bool
  let isTrading: Bool
}
