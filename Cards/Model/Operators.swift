//
//  Operators.swift
//  Cards
//
//  Created by ryan mota on 2025-02-03.
//

import SwiftUI

func + (left: CGSize, right: CGSize) -> CGSize {
  CGSize(
    width: left.width + right.width,
    height: left.height + right.height)
}
