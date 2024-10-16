//
//  Configurable.swift
//  weather-mate
//
//  Created by Gian Manzo on 16/10/24.
//

import UIKit

// Protocolo para células configuráveis
protocol ConfigurableView {
    func addSubviews(_ subviews: UIView...)
}

// Extensão para fornecer implementações padrão
extension ConfigurableView where Self: UICollectionViewCell {
    func addSubviews(_ subviews: UIView...) {
        for subview in subviews {
            contentView.addSubview(subview)
        }
    }
}

extension ConfigurableView where Self: UIViewController {
    func addSubviews(_ subviews: UIView...) {
        for subview in subviews {
            view.addSubview(subview)
        }
    }
}
