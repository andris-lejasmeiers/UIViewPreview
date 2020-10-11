//
//  UIViewPreview.swift
//  UIViewPreview
//
//  Created by Andris Lejasmeiers on 04/12/2019.
//

#if canImport(SwiftUI) && canImport(UIKit)
import SwiftUI
import UIKit

@available(iOS 13.0, *)
public struct UIViewPreview<View: UIView>: UIViewRepresentable {
  private let view: View

  public init(_ builder: @escaping () -> View) {
    view = builder()
  }

  // MARK: - UIViewRepresentable
  
  public func makeUIView(context: Context) -> UIView {
    view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
    return view
  }

  public func updateUIView(_ view: UIView, context: Context) {}
}
#endif
