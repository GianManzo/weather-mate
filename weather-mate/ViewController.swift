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
    }// loaded once when the screen appears only
    
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        view.addSubview(backgroundView)
        view.addSubview(headerView)
        
        headerView.addSubview(headerCityLabel)
        headerView.addSubview(temperatureCityLabel)
        headerView.addSubview(weatherIconImageView)
    }
    
    private lazy var backgroundView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        
      
        return imageView
    }()
    
    private lazy var headerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = UIColor(named: "offWhite")
        view.layer.cornerRadius = 20
        
       
        return view
    }()
    
    private lazy var headerCityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
      
        label.text = "New York"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.textColor = UIColor(named: "textPrimaryColor")
        
        
        return label
    }()
    
    private lazy var temperatureCityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.textAlignment = .left
        label.text = "25°C"
        label.font = UIFont.systemFont(ofSize: 70, weight: .bold)
        label.textColor = UIColor(named: "textPrimaryColor")
        
        
        return label
    }()
    
    private lazy var weatherIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.image = UIImage(named: "sunIcon")
        imageView.contentMode = .scaleAspectFit
        
        
        return imageView
    }()

    
    private func setConstraints() {
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
    
