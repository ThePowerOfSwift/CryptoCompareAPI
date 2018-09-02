# CryptoCompareAPI 
Swifty cryptocompare api client

# Pod install
Add `pod 'CryptoCompareAPI'` to your Podfile. Run `pod install`

# Example
```swift
let api = CryptoCompareAPI(applicationName: "MyApp")
    
// Retrieve all coins (actually this is not the whole coin list
// from cryptocompare API, but this endpoint is useful anyway
api.send(GetCoinListRequest()) {
  switch $0 {
  case .success(let coinList):
    // Process coinList here

  case .failure(let error):
    // Handle error state
    print(error.description)
  }
}
```

```swift
let request = GetSymbolsPriceRequest(fsyms: "BTC,ETH",
                                     tsyms: "USD",
                                     e: .binance)
    
api.send(request) {
  switch $0 {
  case .success(let prices):
    // Process prices here

  case .failure(let error):
    // Handle error state
    print(error.description)
  }
}
```

# License
Copyright 2018 Eugene Velizhenkov

Licensed under the MIT License; you may not use this file except in compliance with the License. You may obtain a copy of the License at

https://opensource.org/licenses/MIT
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
