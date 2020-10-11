//
//  UIViewControllerPreview.swift
//  UIViewPreview
//
//  Created by Andris Lejasmeiers on 04/12/2019.
//

#if canImport(SwiftUI) && canImport(UIKit)
import SwiftUI
import UIKit

@available(iOS 13.0, *)
public struct UIViewControllerPreview<ViewController: UIViewController>:
UIViewControllerRepresentable {
  private let viewController: ViewController

  public init(_ builder: @escaping () -> ViewController) {
    viewController = builder()
  }

  // MARK: - UIViewControllerRepresentable

  public func makeUIViewController(context: Context) -> ViewController { viewController }

  public func updateUIViewController(
    _ uiViewController: ViewController,
    context: UIViewControllerRepresentableContext<UIViewControllerPreview<ViewController>>
  ) {}
}
#endif
