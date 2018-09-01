//
//  GetSymbolsPriceRequest.swift
//  CryptoCompareApi
//
//  Created by Yevhen Velizhenkov on 8/29/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import Foundation

struct GetSymbolsPriceRequest: APIRequest {
  typealias Response = String
  
  var resourceName: String {
    return "coinlist"
  }
  
  let fsyms: String
  let tsyms: String
  let e: Exchange?
  
  init(fsyms: String,
       tsyms: String,
       e: Exchange? = nil) {
    self.fsyms = fsyms
    self.tsyms = tsyms
    self.e = e
  }
}
