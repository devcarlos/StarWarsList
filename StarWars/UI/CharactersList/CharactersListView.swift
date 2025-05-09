import SwiftUI

struct CharactersListView: View {
    @ObservedObject private var viewModel = CharactersListViewModel()

    var body: some View {
        NavigationStack {
            content
                .navigationTitle("Star War Characters")
        }.task {
            await viewModel.loadCharactersList()
        }
    }

    @ViewBuilder
    private var content: some View {
        if $viewModel.isLoading.wrappedValue {
            ProgressView()
            
        } else {
            List($viewModel.charaterList.wrappedValue?.list ?? []) { character in
                CharacterCell(character: character)
            }
        }
    }
}

#if DEBUG
#Preview {
    CharactersListView()
}
#endif
