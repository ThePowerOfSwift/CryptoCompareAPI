//
//  CryptoCompareResponse.swift
//  CryptoCompareApi
//
//  Created by Yevhen Velizhenkov on 8/29/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import Foundation

struct CryptoCompareResponse<Response: Decodable>: Decodable {
  let response: String?
  let message: String?
  
  let data: Response?
}
