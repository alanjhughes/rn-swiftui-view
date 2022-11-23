import SwiftUI

struct ImageData: Identifiable, Hashable {
    var id = UUID().uuidString
    let name: String
}

let imageData = [
    ImageData(name: "first"),
    ImageData(name: "second"),
    ImageData(name: "third"),
    ImageData(name: "fourth"),
    ImageData(name: "fifth"),
    ImageData(name: "sixth"),
    ImageData(name: "seventh")
]
