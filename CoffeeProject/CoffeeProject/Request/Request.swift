//
//  Request.swift
//  CoffeeProject
//
//  Created by Rodrigo Garcia on 25/04/1401 AP.
//

import UIKit
import Alamofire


class Request: NSObject {

    func makeRequest(completion: @escaping (CoffeeIced? , Bool) -> Void) {
        AF.request("https://api.sampleapis.com/coffee/iced", method: .get).responseJSON { response in
            if response.response?.statusCode == 200 {
                do {
                    let coffeeIce = try JSONDecoder().decode(CoffeeIced.self, from: response.data ?? Data())
                    completion(coffeeIce, true)
                } catch {
                    completion(nil, false)
                }
            } else {
                completion(nil, false)
            }
        }
    }
}
