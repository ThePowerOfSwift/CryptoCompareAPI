//
//  HistoricalDataResponse.swift
//  CryptoCompareApi
//
//  Created by Yevhen Velizhenkov on 9/3/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import Foundation

public typealias HistoricalDataResponse = [HistoryEntry]

public struct HistoryEntry: Decodable {
  enum CodingKeys: String, CodingKey {
    case time, close, high, low, open
    case volumeFrom = "volumefrom"
    case volumeTo = "volumeto"
  }
  
  public let time: Int
  public let close: Decimal
  public let high: Decimal
  public let low: Decimal
  public let open: Decimal
  public let volumeFrom: Decimal
  public let volumeTo: Decimal
}
