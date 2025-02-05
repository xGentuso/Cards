import SwiftUI

class CardStore: ObservableObject {
  @Published var cards: [Card] = []
    
    init(defaultData: Bool = false) {
      if defaultData {
        cards = initialCards
      }
    }
    
    func index(for card: Card) -> Int? {
      cards.firstIndex { $0.id == card.id }
    }

}

