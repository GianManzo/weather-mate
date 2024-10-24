//
//  DailyForecastTableViewCell.swift
//  weather-mate
//
//  Created by Gian Manzo on 24/10/24.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {
    static let identifier: String = "DailyForecastTableViewCell"
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupSubviews() {
        backgroundColor = .clear
        selectionStyle = .none
        contentView.layoutMargins = UIEdgeInsets(top: 0, left: 35, bottom: 0, right: 35)

        contentView.addSubview(stackView)
        setupDailyForecastConstraints()
    }

    private lazy var weekForecastLabel: UILabel = {
        createCustomLabel(text: "TER", font: .smallSemiBold, textColor: .offWhite, alignment: .center)
    }()

    private lazy var minTemperature: UILabel = {
        createCustomLabel(text: "min 25", font: .smallSemiBold, textColor: .offWhite, alignment: .center)
    }()

    private lazy var maxTemperature: UILabel = {
        createCustomLabel(text: "max 25", font: .smallSemiBold, textColor: .offWhite, alignment: .center)
    }()

    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "cloudIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private lazy var stackView: UIStackView = {
        createCustomStackView(subviews: [weekForecastLabel, iconImageView, minTemperature, maxTemperature], axis: .horizontal) {
            stackView in
            stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
            stackView.spacing = 15
            stackView.isLayoutMarginsRelativeArrangement = true
        }
    }()

    func setupDailyForecastConstraints() {
        stackView.setConstraintsToParent(contentView)

        NSLayoutConstraint.activate([
            weekForecastLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 50),

        ])
    }
}
