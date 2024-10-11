//
//  Typography.swift
//  weather-mate
//
//  Created by Gian Manzo on 11/10/24.
//

import UIKit

struct FontSizes {
    static let size12: CGFloat = 12.0
    static let size20: CGFloat = 20.0
    static let size70: CGFloat = 70.0
}

struct FontStyles {
    static let small = UIFont.systemFont(ofSize: FontSizes.size12)
    static let regular = UIFont.systemFont(ofSize: FontSizes.size20)
    static let big = UIFont.systemFont(ofSize: FontSizes.size70)
    
    static let smallBold = UIFont.boldSystemFont(ofSize: FontSizes.size12)
    static let regularBold = UIFont.boldSystemFont(ofSize: FontSizes.size20)
    static let bigBold = UIFont.boldSystemFont(ofSize: FontSizes.size70)
}

struct LineHeight {
    static let normal: CGFloat = 1.5
    static let heading: CGFloat = 1.2
}


extension UILabel {
    func applyDesign(style: UIFont) {
        self.font = style // Usando a propriedade de fonte do estilo
        self.textColor = Colors.textPrimaryColor // Definindo a cor do texto
    }
}
