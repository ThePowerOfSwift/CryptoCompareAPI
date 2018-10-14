//
//  GetLatestNewsRequest.swift
//  CryptoCompareApi
//
//  Created by Yevhen Velizhenkov on 10/4/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import Foundation

public struct GetLatestNewsRequest: APIRequest {
  public typealias Response = NewsFeedsResponse
  
  // TODO: Add other languages to the url options
  public var resourceName: String {
    return "v2/news/?lang=EN"
  }
  
  let feeds: String?
  let categories: String?
  let excludeCategories: String?
  let its: Int?
  let lang: String?
  let sortOrder: String?
  
  public init(feeds: String? = nil,
              categories: String? = nil,
              excludeCategories: String? = nil,
              its: Int? = nil,
              lang: String? = nil,
              sortOrder: String? = nil) {
    self.feeds = feeds
    self.categories = categories
    self.excludeCategories = excludeCategories
    self.its = its
    self.lang = lang
    self.sortOrder = sortOrder
  }
}
