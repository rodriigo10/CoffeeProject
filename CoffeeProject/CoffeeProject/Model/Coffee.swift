// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let coffeeIced = try? newJSONDecoder().decode(CoffeeIced.self, from: jsonData)

import Foundation

typealias CoffeeIced = [CoffeeIcedElement]

// MARK: - CoffeeIcedElement
struct CoffeeIcedElement: Codable {
    let title, coffeeIcedDescription: String?
    let ingredients: [String]?
    let image: String?
    let id: Int?

    enum CodingKeys: String, CodingKey {
        case title
        case coffeeIcedDescription = "description"
        case ingredients, image, id
    }
}
