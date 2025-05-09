import Foundation
//{
//    "uid": "1",
//    "name": "Luke Skywalker",
//    "url": "https://www.swapi.tech/api/people/1"
//},

struct Character: Decodable, Identifiable {
    let id: UUID = .init()
    let name: String
//    let gender: String
    
    enum CodingKeys: String, CodingKey {
        case name
//        case gender
    }
}
