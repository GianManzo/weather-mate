//
//  HeaderView.swift
//  weather-mate
//
//  Created by Gian Manzo on 17/10/24.
//

import UIKit

class HeaderView: UIView, ConfigurableView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAddSubviews()
        setupConstraints()
        configureAppearance()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureAppearance() {
        backgroundColor = .offWhite
        layer.cornerRadius = 20
        translatesAutoresizingMaskIntoConstraints = false
    }

    private func setupAddSubviews() {
        addSubviews(headerCityLabel, temperatureCityLabel, weatherIconImageView)
    }

    lazy var headerCityLabel: UILabel = {
        createCustomLabel(text: "New York", textColor: .textPrimary)
    }()

    lazy var temperatureCityLabel: UILabel = {
        createCustomLabel(text: "25°C", font: .bigBold, textColor: .textPrimary, alignment: .left)
    }()

    lazy var weatherIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "sunIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            headerCityLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            headerCityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            headerCityLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            headerCityLabel.heightAnchor.constraint(equalToConstant: 20),

            temperatureCityLabel.topAnchor.constraint(equalTo: headerCityLabel.bottomAnchor, constant: 21),
            temperatureCityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 26),

            weatherIconImageView.heightAnchor.constraint(equalToConstant: 86),
            weatherIconImageView.widthAnchor.constraint(equalToConstant: 86),
            weatherIconImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -21),
            weatherIconImageView.centerYAnchor.constraint(equalTo: temperatureCityLabel.centerYAnchor),
            weatherIconImageView.leadingAnchor.constraint(equalTo: temperatureCityLabel.trailingAnchor, constant: 15),
        ])
    }
}
