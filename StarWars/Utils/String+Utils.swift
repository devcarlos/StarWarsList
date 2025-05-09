import Foundation

extension String {
    func getLastPathComponentfromURL() -> String? {
        URL(string: self)?.pathComponents.last
    }
}
