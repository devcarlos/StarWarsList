import Foundation
import SwiftUI

class CharactersListViewModel: ObservableObject {
    @Published var isLoading = false
    @Published var charaterList: CharactersList?

    private let apiClient: APIClient
    private let charactersClient: CharactersListClient

    init(apiClient: APIClient = APIClient()) {
        self.apiClient = apiClient
        self.charactersClient = CharactersListClient(apiClient: apiClient)
    }

    @MainActor
    func loadCharactersList() async {
        isLoading = true
        let result = await charactersClient.getCharactersList(page: 1)
        isLoading = false

        switch result {
        case .success(let charactersList):
            self.charaterList = charactersList

        case .failure:
            // Consider adding some error handling here, e.g., showing an alert to the user
            break
        }
    }

}
