//
//  HourlyForecastCollectionViewCell.swift
//  weather-mate
//
//  Created by Gian Manzo on 16/10/24.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell, ConfigurableView {
    static let identifier: String = "HourlyForecast"

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
        contentView.backgroundColor = .black
        setupHourlyForecastConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupSubviews() {
        addSubviews(hourLabel)
    }

    lazy var hourLabel: UILabel = {
        createCustomLabel(text: "13:00",
                          font: .smallSemiBold,
                          alignment: .center)
    }()

    lazy var temperatureLabel: UILabel = {
        createCustomLabel(text: "25°C",
                          font: .mediumSemiBold,
                          alignment: .center)
    }()

    func setupHourlyForecastConstraints() {
        NSLayoutConstraint.activate([
            hourLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            hourLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            hourLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            hourLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
    }
}
