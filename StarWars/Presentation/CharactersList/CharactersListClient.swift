import Foundation

class CharactersListClient {
    private let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func getCharactersList(page: Int) async -> Result<CharactersList, APIError> {
        let characterListURL = "https://swapi.tech/api/people/?page="
        let url = URL(string: "\(characterListURL)\(page)")
        // The generic type <CharactersList> will be inferred by the compiler
        // from the return type of this function.
        // No explicit change needed here unless the compiler struggles with inference.
        return await apiClient.sendRequest(url: url)
    }
}
