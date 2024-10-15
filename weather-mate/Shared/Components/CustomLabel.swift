//
//  CustomLabel.swift
//  weather-mate
//
//  Created by Gian Manzo on 15/10/24.
//

import UIKit
/// Creates a custom UILabel with specified properties
///
/// - Parameters:
///   - text: The text to display in the label.
///   - font: The typography style for the label's text (default: `.regular`).
///   - textColor: The color of the text (default: `.offWhite`).
///   - alignment: The text alignment (default: `.center`).
/// - Returns: A UILabel with the specified properties.

func createCustomLabel(text: String, font: TypographyStyle = .regular, textColor: UIColor = .offWhite, alignment: NSTextAlignment = .center, configure: ((UILabel) -> Void)? = nil) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.applyTypographyStyle(font: font, textColor: textColor, alignment: alignment)
    
    configure?(label)
    
    return label
}
