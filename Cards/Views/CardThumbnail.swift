//
//  CardThumbnail.swift
//  Cards
//
//  Created by ryan mota on 2025-02-03.
//

import SwiftUI

struct CardThumbnail: View {
  var body: some View {
    RoundedRectangle(cornerRadius: 15)
          .foregroundColor(.random())
      .frame(
        width: Settings.thumbnailSize.width,
        height: Settings.thumbnailSize.height)

  }
}


#Preview {
    CardThumbnail()
}
