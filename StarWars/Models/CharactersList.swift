struct CharactersList: Decodable {
    let count: Int
    let list: [Character]

    enum CodingKeys: String, CodingKey {
        case count = "total_records"
        case list = "results"
    }
}
