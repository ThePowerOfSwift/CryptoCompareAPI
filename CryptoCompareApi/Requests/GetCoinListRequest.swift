//
//  GetCoinListRequest.swift
//  CryptoCompareApi
//
//  Created by Yevhen Velizhenkov on 8/29/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import Foundation

struct GetCoinListRequest: APIRequest {
  typealias Response = String
  
  var resourceName: String {
    return "all/coinlist"
  }
}
