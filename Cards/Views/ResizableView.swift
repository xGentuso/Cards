//
//  ResizableView.swift
//  Cards
//
//  Created by Douglas Jasper on 2025-02-03.
//

import SwiftUI

struct ResizableView: ViewModifier {
    
  @State private var transform = Transform()
  @State private var previousOffset: CGSize = .zero
  @State private var previousRotation: Angle = .zero
  @State private var scale: CGFloat = 1.0
  
    
    var dragGesture: some Gesture {
      DragGesture()
        .onChanged { value in
          transform.offset = value.translation + previousOffset
        }
        .onEnded { _ in
          previousOffset = transform.offset
        }
    }
    
    var rotationGesture: some Gesture {
      RotationGesture()
        .onChanged { rotation in
          transform.rotation += rotation - previousRotation
          previousRotation = rotation
        }
        .onEnded { _ in
          previousRotation = .zero
        }
    }
    
    var scaleGesture: some Gesture {
      MagnificationGesture()
        .onChanged { scale in
          self.scale = scale
        }
        .onEnded { scale in
          transform.size.width *= scale
          transform.size.height *= scale
          self.scale = 1.0
        }
    }



    func body(content: Content) -> some View {

    // 2
    content
      .frame(
        width: transform.size.width,
        height: transform.size.height)
      .offset(transform.offset)
      .rotationEffect(transform.rotation)
      .scaleEffect(scale)
      .gesture(dragGesture)
      .gesture(SimultaneousGesture(rotationGesture, scaleGesture))


  }
}


#Preview {
    RoundedRectangle(cornerRadius: 30.0)
          .foregroundColor(Color.blue)
          .resizableView()

}

extension View {
  func resizableView() -> some View {
    modifier(ResizableView())
  }
}
