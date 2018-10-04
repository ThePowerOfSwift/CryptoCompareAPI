//
//  GetNewsFeedsRequest.swift
//  CryptoCompareApi
//
//  Created by Yevhen Velizhenkov on 10/4/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import Foundation

public struct GetNewsFeedsRequest: APIRequest {
  public typealias Response = NewsFeedsResponse
  
  public var resourceName: String {
    return "news/feeds"
  }
}
