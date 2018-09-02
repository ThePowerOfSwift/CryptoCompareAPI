//
//  CryptoCompareApi.swift
//  CryptoCompareApi
//
//  Created by Yevhen Velizhenkov on 8/29/18.
//  Copyright © 2018 tapkain. All rights reserved.
//

import Foundation

public struct CryptoCompareApi {
  private let baseEndpoint = "https://min-api.cryptocompare.com/data/"
  private let session: URLSession
  private let applicationName: String?
  
  public init(applicationName: String? = nil,
              session: URLSession = URLSession.shared) {
    self.applicationName = applicationName
    self.session = session
  }
  
  func send<T: APIRequest>(
    _ request: T,
    completion: @escaping ResultCallback<T.Response>) {
    do {
      let urlRequest = try RequestBuilder.makeURLRequest(for: request, baseEndpoint: baseEndpoint, applicationName: applicationName)
      
      session.dataTask(with: urlRequest) { data, response, error in
        do {
          let validData = try ResponseValidator.validateDataTaskResponse(data, response, error)
          let result = try JSONDecoder().decode(CryptoCompareResponse<T.Response>.self, from: validData)
          completion(.success(result.data))
        } catch let error as CryptoCompareError {
          completion(.failure(error))
          return
        } catch let error {
          completion(.failure(CryptoCompareError.requestError(error: error)))
        }
      }.resume()
      
    } catch let error as CryptoCompareError {
      fatalError(error.description)
    } catch {
      fatalError("CryptoCompareApi internal error.")
    }
  }
}
