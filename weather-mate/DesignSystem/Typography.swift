//
//  Typography.swift
//  weather-mate
//
//  Created by Gian Manzo on 11/10/24.
//

import UIKit

struct FontSizes {
    static let size12: CGFloat = 12.0
    static let size14: CGFloat = 14.0
    static let size20: CGFloat = 20.0
    static let size70: CGFloat = 70.0
}

struct FontStyles {
    static let small = UIFont.systemFont(ofSize: FontSizes.size12)
    static let medium = UIFont.systemFont(ofSize: FontSizes.size14)
    static let regular = UIFont.systemFont(ofSize: FontSizes.size20)
    static let big = UIFont.systemFont(ofSize: FontSizes.size70)

    static let smallBold = UIFont.boldSystemFont(ofSize: FontSizes.size12)
    static let mediumBold = UIFont.boldSystemFont(ofSize: FontSizes.size14)
    static let regularBold = UIFont.boldSystemFont(ofSize: FontSizes.size20)
    static let bigBold = UIFont.boldSystemFont(ofSize: FontSizes.size70)

    static let smallSemiBold = UIFont.systemFont(ofSize: FontSizes.size12, weight: .semibold)
    static let mediumSemiBold = UIFont.systemFont(ofSize: FontSizes.size14, weight: .semibold)
}

enum TypographyStyle {
    case small
    case medium
    case regular
    case big
    case smallBold
    case mediumBold
    case regularBold
    case bigBold
    case smallSemiBold
    case mediumSemiBold

    var font: UIFont {
        switch self {
        case .small:
            return FontStyles.small
        case .medium:
            return FontStyles.medium
        case .regular:
            return FontStyles.regular
        case .big:
            return FontStyles.big
        case .smallBold:
            return FontStyles.smallBold
        case .mediumBold:
            return FontStyles.mediumBold
        case .regularBold:
            return FontStyles.regularBold
        case .bigBold:
            return FontStyles.bigBold
        case .smallSemiBold:
            return FontStyles.smallSemiBold
        case .mediumSemiBold:
            return FontStyles.mediumSemiBold
        }
    }
}

extension UILabel {
    func applyTypographyStyle(
        font: TypographyStyle = .regular,
        textColor: UIColor = Colors.textPrimaryColor!,
        alignment: NSTextAlignment = .center
    ) {
        self.font = font.font
        self.textColor = textColor
        textAlignment = alignment
    }
}
