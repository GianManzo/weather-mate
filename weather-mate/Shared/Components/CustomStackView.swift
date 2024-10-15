//
//  CustomStackView.swift
//  weather-mate
//
//  Created by Gian Manzo on 15/10/24.
//

import UIKit

/// Creates a custom UIStackView with specified properties and subviews.
///
/// This function allows the creation of a `UIStackView` with predefined properties
/// such as axis and spacing, while also enabling further customization via a closure.
///
/// - Parameters:
///   - subviews: An array of views to be arranged within the stack view.
///   - axis: The axis along which the arranged views are laid out (default: `.horizontal`).
///   - spacing: The spacing between the arranged views (default: 0).
///   - configure: An optional closure that allows additional customization of the stack view.
///     Through this closure, properties such as background color, alignment, distribution, etc.,
///     can be modified after the stack view is initialized. If no closure is provided,
///     default values will be applied.
///
/// - Returns: A fully configured `UIStackView`.
///
func createCustomStackView(
    subviews: [UIView],
    axis: NSLayoutConstraint.Axis = .horizontal,
    spacing: CGFloat = 0,
    configure: ((UIStackView) -> Void)? = nil
) -> UIStackView {
    let stackView = UIStackView(arrangedSubviews: subviews)
    stackView.axis = axis
    stackView.spacing = spacing
    stackView.translatesAutoresizingMaskIntoConstraints = false

    configure?(stackView)

    return stackView
}
