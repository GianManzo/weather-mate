//
//  ViewController.swift
//  weather-mate
//
//  Created by Gian Manzo on 10/10/24.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    } // loaded once when the screen appears only

    private func setupView() {
        setHierarchy()
        setupViewConstraints()
    }

    private func setHierarchy() {
        view.addSubview(backgroundView)
        view.addSubview(headerView)
        view.addSubview(statsStackView)

        headerView.addSubview(headerCityLabel)
        headerView.addSubview(temperatureCityLabel)
        headerView.addSubview(weatherIconImageView)
    }

    lazy var backgroundView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false

        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill

        return imageView
    }()

    lazy var headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false

        view.backgroundColor = Colors.offWhite
        view.layer.cornerRadius = 20

        return view
    }()

    lazy var headerCityLabel: UILabel = {
        createCustomLabel(text: "New York",
                          textColor: .textPrimary)
    }()

    lazy var temperatureCityLabel: UILabel = {
        createCustomLabel(text: "25°C",
                          font: .bigBold,
                          textColor: .textPrimary,
                          alignment: .left)
    }()

    lazy var statsStackView: UIStackView = {
        createCustomStackView(subviews: [humidityStackView, windStackView],
                              axis: .vertical,
                              spacing: 3) {
            stackView in
            stackView.backgroundColor = Colors.softGray
            stackView.layer.cornerRadius = 10
            applyPadding(to: stackView,
                         top: .small,
                         leading: .big,
                         bottom: .small,
                         trailing: .big)
        }
    }()

    lazy var humidityStackView: UIStackView = {
        createCustomStackView(subviews: [humidityLabel, humidityValueLabel])
    }()

    lazy var windStackView: UIStackView = {
        createCustomStackView(subviews: [windLabel, windValueLabel])
    }()

    lazy var humidityLabel: UILabel = {
        createCustomLabel(text: "Umidade",
                          font: .smallSemiBold,
                          alignment: .left)
    }()

    lazy var humidityValueLabel: UILabel = {
        createCustomLabel(text: "1000mm",
                          font: .smallSemiBold,
                          alignment: .left)
    }()

    lazy var windLabel: UILabel = {
        createCustomLabel(text: "Vento",
                          font: .smallSemiBold,
                          alignment: .left)
    }()

    lazy var windValueLabel: UILabel = {
        createCustomLabel(text: "10km/h",
                          font: .smallSemiBold,
                          alignment: .left)
    }()

    lazy var weatherIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false

        imageView.image = UIImage(named: "sunIcon")
        imageView.contentMode = .scaleAspectFit

        return imageView
    }()
}

//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//    }// whenever the screen appears this executes
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//    }// before the screen appears this executes
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//    } // when it will disappear that the screen appears this executes
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//    }// When the screen has disappeared, this appears.
