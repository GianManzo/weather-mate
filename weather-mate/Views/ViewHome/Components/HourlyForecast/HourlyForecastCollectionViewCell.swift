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
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupSubviews() {
        contentView.addSubview(stackView)
        setupHourlyForecastConstraints()
    }

    private lazy var stackView: UIStackView = {
        createCustomStackView(subviews: [hourLabel, iconImageView, temperatureLabel], axis: .vertical, spacing: 4) {
            stackView in
            stackView.layer.borderWidth = 1
            stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
            stackView.isLayoutMarginsRelativeArrangement = true
            stackView.layer.borderColor = UIColor.offWhite.cgColor
            stackView.layer.cornerRadius = 20
        }
    }()

    private lazy var hourLabel: UILabel = {
        createCustomLabel(text: "13:00",
                          font: .smallSemiBold,
                          alignment: .center)
    }()

    private lazy var temperatureLabel: UILabel = {
        createCustomLabel(text: "25°C",
                          font: .mediumSemiBold,
                          alignment: .center)
    }()

    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "sunIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    func setupHourlyForecastConstraints() {
        stackView.setConstraintsToParent(contentView)

        NSLayoutConstraint.activate([
            iconImageView.heightAnchor.constraint(equalToConstant: 33),
        ])
    }
}
