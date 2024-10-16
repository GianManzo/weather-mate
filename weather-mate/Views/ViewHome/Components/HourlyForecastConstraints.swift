//
//  HourlyForecastConstrainst.swift
//  weather-mate
//
//  Created by Gian Manzo on 16/10/24.
//

import UIKit

extension HourlyForecastCollectionViewCell {
    func setupHourlyForecastConstraints() {
        NSLayoutConstraint.activate([
            hourLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            hourLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            hourLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            hourLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
}
