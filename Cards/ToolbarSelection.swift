//
//  ToolbarSelection.swift
//  Cards
//
//  Created by ryan mota on 2025-02-03.
//

import Foundation

enum ToolbarSelection: CaseIterable, Identifiable {
    var id: Int {
      hashValue
    }
  case photoModal, frameModal, stickerModal, textModal
}
