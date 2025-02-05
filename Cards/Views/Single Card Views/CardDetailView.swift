import SwiftUI

struct CardDetailView: View {
  // 1
  @EnvironmentObject var store: CardStore
  @Binding var card: Card

  var body: some View {
    // 2
    ZStack {
      card.backgroundColor
        ForEach($card.elements, id: \.id) { $element in
          CardElementView(element: element)
                .resizableView(transform: $element.transform)
            .frame(
              width: element.transform.size.width,
              height: element.transform.size.height)
        }
    }
  }
}

struct CardDetailView_Previews: PreviewProvider {
  struct CardDetailPreview: View {
    @EnvironmentObject var store: CardStore

    var body: some View {
      CardDetailView(card: $store.cards[0])
    }
  }

  static var previews: some View {
    CardDetailPreview()
      .environmentObject(CardStore(defaultData: true))
  }
}

