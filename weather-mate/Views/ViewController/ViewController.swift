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
        setupViewConstraints()
     }
    
    private func setHierarchy() {
        view.addSubview(backgroundView)
        view.addSubview(headerView)
        
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
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
      
        label.text = "New York"
        label.font = FontStyles.regular
        label.textAlignment = .center
        label.textColor = Colors.textPrimaryColor
        
        
        return label
    }()
    
    lazy var temperatureCityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.textAlignment = .left
        label.text = "25°C"
        label.font = FontStyles.bigBold
        label.textColor = Colors.textPrimaryColor
        
        
        return label
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
    
