import UIKit

extension ViewController {
    func setupViewConstraints() {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            headerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            headerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            headerView.heightAnchor.constraint(equalToConstant: 169)
        ])
        
        NSLayoutConstraint.activate([
            headerCityLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 15),
            headerCityLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
            headerCityLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -15),
            headerCityLabel.heightAnchor.constraint(equalToConstant: 20),
            
            temperatureCityLabel.topAnchor.constraint(equalTo: headerCityLabel.bottomAnchor, constant: 21),
            temperatureCityLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 26),
            
            weatherIconImageView.heightAnchor.constraint(equalToConstant: 86),
            weatherIconImageView.widthAnchor.constraint(equalToConstant: 86),
            weatherIconImageView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -21),
            weatherIconImageView.centerYAnchor.constraint(equalTo: temperatureCityLabel.centerYAnchor),
            weatherIconImageView.leadingAnchor.constraint(equalTo: temperatureCityLabel.trailingAnchor, constant: 15)
        ])
    }
}
