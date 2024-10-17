//
//  ViewController.swift
//  weather-mate
//
//  Created by Gian Manzo on 10/10/24.
//

import UIKit

class ViewHome: UIViewController, ConfigurableView {
    var headerView: HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    } // loaded once when the screen appears only

    private func setupView() {
        setupAddSubviews()
        setupViewHomeConstraints()
    }

    func setupAddSubviews() {
        headerView = HeaderView()
        addSubviews(backgroundView, headerView, statsStackView, hourlyForecastLabel, hourlyCollectionView)
    }

    lazy var backgroundView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false

        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill

        return imageView
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

    lazy var hourlyForecastLabel: UILabel = {
        createCustomLabel(text: "PREVISÃO POR HORA", font: .smallSemiBold, textColor: .offWhite, alignment: .center)
    }()

    lazy var hourlyCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 67, height: 84)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)

        collectionView.translatesAutoresizingMaskIntoConstraints = false

        collectionView.backgroundColor = .red
        collectionView.dataSource = self
        collectionView.register(HourlyForecastCollectionViewCell.self, forCellWithReuseIdentifier: HourlyForecastCollectionViewCell.identifier)

        return collectionView
    }()

    private func setupViewHomeConstraints() {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])

        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            headerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            headerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            headerView.heightAnchor.constraint(equalToConstant: 169),

        ])

        NSLayoutConstraint.activate([
            statsStackView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 24),
            statsStackView.widthAnchor.constraint(equalToConstant: 206),
            statsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])

        NSLayoutConstraint.activate([
            hourlyForecastLabel.topAnchor.constraint(equalTo: statsStackView.bottomAnchor, constant: 29),
            hourlyForecastLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            hourlyForecastLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),

        ])

        NSLayoutConstraint.activate([
            hourlyCollectionView.topAnchor.constraint(equalTo: hourlyForecastLabel.bottomAnchor, constant: 22),
            hourlyCollectionView.heightAnchor.constraint(equalToConstant: 84),
            hourlyCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hourlyCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}

extension ViewHome: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HourlyForecastCollectionViewCell.identifier, for: indexPath)

        return cell
    }
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
