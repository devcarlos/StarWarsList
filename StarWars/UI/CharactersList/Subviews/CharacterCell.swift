import SwiftUI

struct CharacterCell: View {
    let character: Character

    var body: some View {
            VStack(alignment: .leading) {
                Text(character.name)
                    .font(.title)
                    .padding(.top, 10)
                    .padding(.bottom, 5)

//                Text("Gender: \(character.gender)")
//                    .font(.caption)
//                    .padding(.bottom, 5)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        }
}

#if DEBUG
#Preview {
    CharacterCell(character: Character.mocked)
}
#endif
