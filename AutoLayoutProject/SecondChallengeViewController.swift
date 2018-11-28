//
//  SecondChallengeViewController.swift
//  AutoLayoutProject
//
//  Created by Roberto Evangelista on 28/11/18.
//  Copyright © 2018 Davi Cabral. All rights reserved.
//

import UIKit

class SecondChallengeViewController: UIViewController {
    
    lazy var greenView: UIView = {
        let newView = UIView()
        newView.backgroundColor = .green
        view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        return newView
    }()
    
    override func viewWillLayoutSubviews() {
//        let guide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
//            greenView.topAnchor.constraintEqualToSystemSpacingBelow(guide.topAnchor, multiplier: 0.8),
            greenView.topAnchor.constraint(equalTo: view.topAnchor),
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
