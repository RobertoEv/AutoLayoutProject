//
//  ThirdChallengeViewController.swift
//  AutoLayoutProject
//
//  Created by Roberto Evangelista on 28/11/18.
//  Copyright © 2018 Davi Cabral. All rights reserved.
//

import UIKit

class ThirdChallengeViewController: UIViewController {
    
    lazy var greenView: UIView = {
        var newView = UIView()
        newView.backgroundColor = .green
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()
    
    lazy var firstWhiteView: UIView = {
        var newView = UIView()
        newView.backgroundColor = .white
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()

    lazy var secondWhiteView: UIView = {
        var newView = UIView()
        newView.backgroundColor = .white
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()
    
//    lazy var whiteView: UIView = {
//        var newView = UIView()
//        newView.backgroundColor = .white
//        view.addSubview(newView)
//        newView.translatesAutoresizingMaskIntoConstraints = false
//        return newView
//    }()
//
//    lazy var firstWhiteView = whiteView
//    lazy var secondWhiteView = whiteView
    
    override func viewWillLayoutSubviews() {
        NSLayoutConstraint.activate([
            greenView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greenView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6),
            greenView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),

            firstWhiteView.topAnchor.constraint(equalTo: greenView.topAnchor, constant: 20),
            firstWhiteView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: 20),
            firstWhiteView.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -20),
            
            secondWhiteView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: 20),
            secondWhiteView.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -20),
            secondWhiteView.bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: -20),
            secondWhiteView.topAnchor.constraint(equalTo: firstWhiteView.bottomAnchor, constant: 20),
            secondWhiteView.heightAnchor.constraint(equalTo: firstWhiteView.heightAnchor)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
