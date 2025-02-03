//
//  ResizableView.swift
//  Cards
//
//  Created by ryan mota on 2025-02-03.
//

import SwiftUI

struct ResizableView: View {
@State private var transform = Transform()
@State private var previousOffset: CGSize = .zero

  // 1
  private let content = RoundedRectangle(cornerRadius: 30.0)
  private let color = Color.red

    var dragGesture: some Gesture {
      DragGesture()
        .onChanged { value in
          transform.offset = value.translation + previousOffset
        }
        .onEnded { _ in
          previousOffset = transform.offset
        }
    }



  var body: some View {
    // 2
    content
          .frame(
            width: transform.size.width,
            height: transform.size.height)
          .foregroundColor(color)
          .offset(transform.offset)
          .gesture(dragGesture)

  }
}



#Preview {
    ResizableView()
}
