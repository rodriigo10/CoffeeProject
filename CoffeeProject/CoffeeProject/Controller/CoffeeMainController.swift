//
//  CoffeeMainController.swift
//  CoffeeProject
//
//  Created by Rodrigo Garcia on 25/04/1401 AP.
//

import UIKit

class CoffeeMainController: NSObject {

    var requestCoffee = Request()
    var coffee: CoffeeIced?
    
    func getRequest(completion: @escaping (Bool) -> Void) {
        requestCoffee.makeRequest { iced, sucess in
            if sucess {
                self.coffee = iced
                completion(true)
                print(self.coffee?.count ?? 0)
            } else {
                completion(false)
            }
        }
    }
}
