import SwiftUI

struct SplashView: View {
    @State var isActive = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                CharactersListView()
            } else {
                Image("start_wars_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }
        }
        .onAppear {
            Task { @MainActor in
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

#if DEBUG
#Preview {
    SplashView()
}
#endif
