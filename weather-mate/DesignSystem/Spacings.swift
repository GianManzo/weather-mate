//
//  Spacings.swift
//  weather-mate
//
//  Created by Gian Manzo on 15/10/24.
//
import UIKit

enum SpacingSize {
    case small
    case regular
    case big
    case large

    var value: CGFloat {
        switch self {
        case .small:
            return 12.0
        case .regular:
            return 18.0
        case .big:
            return 24.0
        case .large:
            return 30.0
        }
    }
}

func applyPadding(
    to stackView: UIStackView,
    top: SpacingSize = .small,
    leading: SpacingSize = .regular,
    bottom: SpacingSize = .small,
    trailing: SpacingSize = .regular
) {
    stackView.isLayoutMarginsRelativeArrangement = true
    stackView.layoutMargins = UIEdgeInsets(
        top: top.value,
        left: leading.value,
        bottom: bottom.value,
        right: trailing.value
    )
}
