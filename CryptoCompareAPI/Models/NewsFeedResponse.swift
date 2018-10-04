//
//  NewsFeedResponse.swift
//  CryptoCompareApi
//
//  Created by Yevhen Velizhenkov on 10/4/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import Foundation

public typealias NewsFeedsResponse = [NewsFeedResponse]

public struct NewsFeedResponse: Decodable {
  enum CodingKeys: String, CodingKey {
    case key, name, lang, img
  }
  
  public let key: String
  public let name: String
  public let lang: String
  public let img: URL
  
  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    
    key = try container.decode(String.self, forKey: .key)
    name = try container.decode(String.self, forKey: .name)
    lang = try container.decode(String.self, forKey: .lang)
    
    let img = try container.decode(String.self, forKey: .img)
    self.img = URL(string: img)!
  }
}
